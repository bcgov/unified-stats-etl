# BCSS Oracle ETL Mapping Test Suite

This suite creates and validates a deterministic end-to-end mapping fixture for the BCSS
Unified -> PostgreSQL staging -> Oracle ETL.

## Files

1. `01_Create_BCSS_ETL_Test_Data.sql`
   - Inserts exactly one SignedOff `StatRecord` for every distinct mapped
     `SubCategoryMetricId` in the mapping set applicable to the requested reporting month.
   - Resolves `CRT_LOC_ID` through the normal location crosswalk.
   - Selects the mapping set effective on the reporting-month start (expiry is
     exclusive) and a location crosswalk effective that month (expiry is inclusive).
   - Inserts records only for mapped metrics in active SCM, subcategory, and category
     taxonomy; historical archived mappings remain untouched.
   - Refuses to run if existing eligible mapped statistics already exist for the same
     Oracle location/reporting month.
   - Does not delete anything automatically.

2. `02_Review_BCSS_ETL_Test_Data.sql`
   - Reviews the inserted fixture in human-readable Unified terms.
   - Shows every Oracle target mapped from each source SCM.
   - Requires only the `TestRunKey`.

3. `03_Validate_PostgreSQL_Stage.sql`
   - Reconstructs expected canonical cells from persisted test `StatRecords`.
   - Compares them to `etl."BiOracleStatStages"` for a supplied SSIS `LoadId`.
   - Requires an explicit reporting month and `CRT_LOC_ID` alongside the `LoadId`.
     Actual stage rows are scoped by these inputs, so unexpected cells remain visible
     even when no expected source row produced them.
   - Reports missing or ambiguous mapping sets/crosswalks, missing fixtures, duplicate
     stage cells, value/count/Location Level mismatches, and missing or extra cells.

4. `04_Generate_Oracle_Validation.sql`
   - Reconstructs expected Oracle values.
   - Generates Oracle SQL for logical-row validation and cell-by-cell validation.

5. `05_Cleanup_BCSS_ETL_Test_Data.sql`
   - Previews the exact test records.
   - Contains a deliberately commented-out DELETE block.

## Execution order

1. Edit and run `01_Create_BCSS_ETL_Test_Data.sql`.
2. Optionally run `02_Review_BCSS_ETL_Test_Data.sql`.
3. Run the normal SSIS package and record its `LoadId`.
4. Edit the `TestRunKey`, `LoadId`, reporting month, and `CRT_LOC_ID`, then run
   `03_Validate_PostgreSQL_Stage.sql`. Every row must be `PASS` with
   `DifferenceCount = 0`.
5. Edit and run `04_Generate_Oracle_Validation.sql`; copy the generated SQL into Oracle.
6. When finished, preview and deliberately execute `05_Cleanup_BCSS_ETL_Test_Data.sql`.

## Deterministic values

- non-hour/count/km/$ metrics: `Value = SubCategoryMetricId`
- regular/non-overtime hour metrics: `Value = 1000 + SubCategoryMetricId`
- overtime hour metrics: `Value = 2000 + SubCategoryMetricId`

All non-OT records are inserted before OT records, and the script verifies that the
generated regular-hour population is at least 7 hours before OT rows are created.

Each record comment is:

`<TestRunKey>|MAPSET=<MappingSetId>|SCM=<SubCategoryMetricId>`

This preserves the exact mapping set used and removes any dependency on temporary tables
or the original SQL session.

## Expected stage calculations

Only signed-off records whose dates overlap the reporting month and whose SCM,
subcategory, and category are active are eligible. The location crosswalk must be
effective for the reporting month. Non-Supervision and Location Level values targeting
the same Oracle cell are summed together under `IsSupervisor = FALSE`, with
`IsLocationLevel = BOOL_OR(...)`.

For `SHERIFF_SRVCES` hour totals, sum all regular source rows and all overtime
source rows separately, clamp each monthly component subtotal at zero, then add
them. For example, regular values `+4` and `-7` with overtime `+2` yield `2`:
`GREATEST(4 - 7, 0) + GREATEST(2, 0)`. A `SHERIFF_SRVCES_HOURS` detail cell
with a monthly sum of zero or less is omitted. Non-hour values retain their
ordinary sum, including negative totals. Source-row counts include each mapped
source contribution before hour clamping.

## Scope

This suite validates all configured mappings, aggregation, N/Y routing, Location Level -> N
behaviour, mapping fan-out, PostgreSQL staging, and final Oracle values.

Keep the separate behavioural tests for negative-hour suppression, stale-row removal,
rollback, invalid mappings, cross-month validation, and partial Oracle-stage transfer.
