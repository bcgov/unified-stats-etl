# Legacy BCSS to Oracle mapping

This document describes the legacy mapping into `COURTS.SHERIFF_SRVCES` and
`COURTS.SHERIFF_SRVCES_HOURS`. It is intended to support a replacement ETL.

## End-to-end flow

```text
Regional Access data
  -> central Access cache (CRS_DATAX)
  -> three monthly aggregate queries
  -> CRS_EXTRACT
  -> CSS-Extract-YYYY-MM.csv
  -> [CSV-to-BCSS_IMPORT loader not supplied]
  -> Oracle BCSS_IMPORT staging table
  -> CSS_BCSS_IMPORT_PKG.prRunBCSSImport [supplied]
  -> COURTS.SHERIFF_SRVCES and COURTS.SHERIFF_SRVCES_HOURS
```

The SSIS project under `etl/UnifiedExportToOracle` is not this loader. It performs
a newer PostgreSQL-to-Oracle replication of `STAT*`, `SUBCATEGORIES`, and
`SUBCATEGORYMETRICS` tables and contains no reference to `BCSS_IMPORT`.

## Access extraction and business rules

The active Access export runs three aggregate queries for the selected calendar
month. Each query joins:

- `CRS_DATAX.Home` to `CRS_LOCATION.Location_ID`, obtaining `CRT_LOC_ID`;
- `CRS_DATAX.Stat_Type` to `CRS_CATEGORIES_GLOBAL.Cat_Stat`; and
- `CRS_DATAX.Stat_Type` to `CRS_SHERRIF_SRVCS.Cat_Stat`.

All joins are inner joins. Categories must also have `ARCHIVED=False`. The
queries group by court location, mapped Oracle column name, and supervision.

| Output kind | Mapping field                      | Value calculation                               | Additional filter                                    |
| ----------- | ---------------------------------- | ----------------------------------------------- | ---------------------------------------------------- |
| Total       | `CRS_SHERRIF_SRVCS.Sheriff_Srvces` | `SUM(Nz(Stat_Value, 0) + Nz(Stat_Overtime, 0))` | Mapped name is not null                              |
| Regular     | `CRS_SHERRIF_SRVCS.HRS_REG`        | `SUM(Stat_Value)`                               | Mapped name is not null and sum is greater than zero |
| Overtime    | `CRS_SHERRIF_SRVCS.HRS_OT`         | `SUM(Stat_Overtime)`                            | Mapped name is not null and sum is greater than zero |

Consequences that a replacement ETL must preserve or consciously change:

- Total rows may contain zero or negative values. Regular and overtime rows do
  not contain zero or negative monthly sums.
- Null is explicitly converted to zero only in the total calculation.
- There is no rounding, sign conversion, or hierarchy-based "auto sum" in the
  supplied Access logic.
- Multiple source records, and even multiple categories sharing one mapped
  output name, are aggregated into one row per location, output name, and
  supervision value within each query.
- Missing location, category, or mapping joins silently remove source rows.
- `CRS_EXTRACT.Stat_Value` is an Access `Single`, so precision may already be
  reduced before the CSV is produced.
- The extract date is text representing the first day of the selected month in
  `MM/01/YYYY` form.

The saved query `Ap CRS_EXTRACT` is not part of the active export path. It uses
`CRS_CATEGORIES_GLOBAL.Sheriff_Srvces` instead of the three-field
`CRS_SHERRIF_SRVCS` mapping.

## Staging contract

The missing CSV loader prevents the field mapping from being proven directly.
The following mapping is strongly inferred from the matching Access output and
package input fields:

| Access/CSV field | `BCSS_IMPORT` field | Oracle package behavior                     |
| ---------------- | ------------------- | ------------------------------------------- |
| `CRT_LOC_ID`     | `crt_loc_id`        | Destination location key                    |
| `Sheriff_Srvces` | `css_col_nm`        | Treated as a physical Oracle column name    |
| `Stat_Value`     | `stat_value`        | Dynamically assigned to the selected column |
| `Supervision`    | `supervision_yn`    | `'0'` becomes `'N'`; `'1'` becomes `'Y'`    |
| `Extract_Date`   | `month_yr`          | First 10 characters parsed as `MM/DD/YYYY`  |

The loader's conversion of Access Boolean text to `'0'` or `'1'` is unresolved.
Any other `supervision_yn` value becomes null through Oracle `DECODE`.

## Oracle destination algorithm

`prRunBCSSImport` performs these operations:

1. Replace null staging `stat_value` values with zero and commit.
2. Parse each distinct month from `substr(month_yr, 1, 10)` using
   `MM/DD/YYYY`.
3. For each staged month, delete existing rows from both destination tables for
   every staged `crt_loc_id`. The delete is not limited by supervision.
4. Process the month's staging rows ordered by location and decoded supervision.
5. If `css_col_nm` exists in `SHERIFF_SRVCES`, route the value there. Otherwise,
   if it exists in `SHERIFF_SRVCES_HOURS`, route it there.
6. Update an existing row keyed by `(month, crt_loc_id, supervisor_yn)`, or
   insert that row with the current statistic column populated.
7. Log and skip a name that is absent from both destination tables.
8. Commit destination changes, delete every row from `BCSS_IMPORT`, and commit
   again.

An inserted `SHERIFF_SRVCES` row sets `create_date`, `created_by`, and
`nil_report='N'`. An inserted `SHERIFF_SRVCES_HOURS` row sets `create_date` and
`created_by`. Updates do not set `update_date` or `updated_by`.

## Destination routing and naming

Routing is by physical column-name existence, not by a category ID or explicit
table mapping. The map stored in `CRS_SHERRIF_SRVCS` must therefore contain exact
Oracle identifiers.

The naming relationship is easiest to see for hours:

| Business value                        | Example destination                       |
| ------------------------------------- | ----------------------------------------- |
| Total ground escort hours, level 1    | `SHERIFF_SRVCES.GRD_ESC_HRS_L1`           |
| Regular ground escort hours, level 1  | `SHERIFF_SRVCES_HOURS.GRD_ESC_REG_HRS_L1` |
| Overtime ground escort hours, level 1 | `SHERIFF_SRVCES_HOURS.GRD_ESC_OT_HRS_L1`  |
| Total holding sheriff hours           | `SHERIFF_SRVCES.HLD_SHRF_HRS`             |
| Regular holding sheriff hours         | `SHERIFF_SRVCES_HOURS.HLD_SHRF_REG_HRS`   |
| Overtime holding sheriff hours        | `SHERIFF_SRVCES_HOURS.HLD_SHRF_OT_HRS`    |

Names are not generated by the package. For example, it does not derive
`_REG_` or `_OT_` names from a total name. All three names are independent data
in `CRS_SHERRIF_SRVCS`.

## Duplicate and ambiguous mappings

### Duplicate source mappings

Within one Access query, categories mapped to the same output name are combined
by `GROUP BY`; their values are summed. Duplicate rows in `CRS_SHERRIF_SRVCS`
could instead multiply joined source rows and inflate the sum.

The three append queries share the `CRS_EXTRACT` key
`(CRT_LOC_ID, Sheriff_Srvces, Supervision)`. Reusing one output name across total,
regular, or overtime mappings for the same location and supervision can cause an
Access staging-key collision rather than an additional sum.

### Duplicate staging rows

The Oracle package does not aggregate duplicate `BCSS_IMPORT` rows. It updates
the same destination column repeatedly, so the last processed value wins.
Ordering is only by location and supervision; order among duplicate column rows
is unspecified. A replacement ETL should reject duplicates or define an explicit
aggregation rule.

### Names shared by both destinations

Seven columns exist in both destination tables:

```text
CRT_LOC_ID
MONTH
SUPERVISOR_YN
CREATE_DATE
CREATED_BY
UPDATE_DATE
UPDATED_BY
```

Because `SHERIFF_SRVCES` is checked first, any staging mapping using one of these
names routes to that table. These are key or audit columns, not statistics; such
a mapping could overwrite row identity/audit data or fail conversion. A new ETL
should explicitly prohibit them as statistic mappings.

## Skipped mappings and rows

The legacy process omits or skips data in these cases:

- Access source row has no matching location, category, or
  `CRS_SHERRIF_SRVCS` row due to inner joins.
- Category is archived.
- Selected total mapping is null.
- Selected regular/overtime mapping is null.
- Regular/overtime monthly sum is zero or negative.
- `css_col_nm` is absent from both destination tables. The package logs
  `Column ... does not exist ... - not loaded` and continues.

There is no demonstrated reconciliation report comparing source categories,
CSV rows, staging rows, loaded columns, and skipped rows.

## Legacy error and transaction behavior

These behaviors are important when interpreting historic results, but should
not be copied into a replacement ETL:

- The logging procedure inserts into `BCSS_IMPORT_LOG` and commits the entire
  session. Logging an error can therefore commit preceding deletes or partial
  loads before the caller executes `ROLLBACK`.
- The outer exception handler logs before rolling back, making its rollback
  ineffective for work committed by that log call.
- A destination error stops the run; there is no per-row reject path.
- Helper-function errors are logged and returned as `FALSE`. A failed row
  existence check can therefore lead to an insert attempt.
- `DELETE` does not raise `NO_DATA_FOUND`, so the delete-specific handlers do
  not detect an empty destination.
- Dynamic SQL concatenates both `css_col_nm` and `stat_value`. Values are not
  bound, and identifiers are not checked against a statistic-only allowlist.
- Number and date rendering can depend on Oracle session NLS settings.
- `ALL_TAB_COLUMNS` checks only `TABLE_NAME` and `COLUMN_NAME`, not `OWNER`.
  Visible same-named tables in another schema could create false matches.
- The historic destination DDL supplied here has no uniqueness constraints on
  `(month, crt_loc_id, supervisor_yn)`. The package assumes logical uniqueness
  without enforcing it.
- On the normal path, all staging rows are deleted, including rows logged as
  unmapped. They are unavailable for later correction unless retained elsewhere.
- Month/location replacement deletes both supervisor rows even if staging has
  only one supervision value. The absent value is not recreated.
