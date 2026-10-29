/*
===============================================================================
  04_Generate_Oracle_Validation_From_Stage.sql

  Run in PostgreSQL AFTER 03_Validate_PostgreSQL_Stage.sql returns only PASS.
  Copy the OracleValidationSql result into an Oracle SQL worksheet and run it.
  This uses the actual validated stage cells, so it includes all newly mapped
  holding-cell, transport, staff-hour and other columns automatically.
===============================================================================
*/
WITH
params AS
(
    SELECT
        /* EDIT to match the fixture and SSIS run validated in step 03. */
        '00000000-0000-0000-0000-000000000001'::uuid AS load_id,
        DATE '2026-11-01' AS reporting_month,
        488::integer AS crt_loc_id
),
scoped_stage AS
(
    SELECT s.*
      FROM etl."BiOracleStatStages" s
      CROSS JOIN params p
     WHERE s."LoadId" = p.load_id
       AND s."ReportingMonth" = p.reporting_month
       AND s."CrtLocId" = p.crt_loc_id
),
validation AS
(
    SELECT
        COUNT(*) AS cell_count,
        COUNT(*) FILTER
        (
            WHERE "TargetTable" NOT IN ('SHERIFF_SRVCES', 'SHERIFF_SRVCES_HOURS')
               OR "TargetTable" IS NULL
               OR "TargetColumn" IS NULL
               OR "TargetColumn" !~ '^[A-Z][A-Z0-9_]*$'
               OR "IsSupervisor" IS NULL
               OR "StatValue" IS NULL
        ) AS invalid_cell_count,
        COUNT(*) - COUNT(DISTINCT
            ("TargetTable", "TargetColumn", "IsSupervisor")) AS duplicate_cell_count
      FROM scoped_stage
),
clauses AS
(
    SELECT
        s."TargetTable", s."TargetColumn", s."IsSupervisor",
        format(
            'select %L as target_table, date %L as reporting_month, %s as crt_loc_id, '
            || '%L as supervisor_yn, %L as target_column, %s as expected_value, '
            || '(select t."%s" from courts."%s" t '
            || 'where t.month = date %L and t.crt_loc_id = %s '
            || 'and t.supervisor_yn = %L '
            || 'and t.created_by = ''LEGACY_STATS_PSQL_TO_ORACLE'') as actual_value from dual',
            s."TargetTable",
            to_char(s."ReportingMonth", 'YYYY-MM-DD'),
            s."CrtLocId",
            CASE WHEN s."IsSupervisor" THEN 'Y' ELSE 'N' END,
            s."TargetColumn", s."StatValue"::text,
            s."TargetColumn", s."TargetTable",
            to_char(s."ReportingMonth", 'YYYY-MM-DD'),
            s."CrtLocId", CASE WHEN s."IsSupervisor" THEN 'Y' ELSE 'N' END
        ) AS oracle_clause
      FROM scoped_stage s
      WHERE s."TargetTable" IN ('SHERIFF_SRVCES', 'SHERIFF_SRVCES_HOURS')
        AND s."TargetColumn" ~ '^[A-Z][A-Z0-9_]*$'
        AND s."IsSupervisor" IS NOT NULL
        AND s."StatValue" IS NOT NULL
),
generated AS
(
    SELECT
        'select target_table, reporting_month, crt_loc_id, supervisor_yn, '
        || 'target_column, expected_value, actual_value, '
        || 'case when expected_value = actual_value then ''PASS'' else ''FAIL'' end as result'
        || ' from ('
        || string_agg(
            oracle_clause,
            ' UNION ALL '
            ORDER BY "TargetTable", "IsSupervisor", "TargetColumn"
        )
        || ') order by target_table, supervisor_yn, target_column;'
        AS oracle_sql
    FROM clauses
)
SELECT
    CASE
        WHEN v.cell_count = 0 THEN 'FAIL: no stage rows for this LoadId/month/location'
        WHEN v.invalid_cell_count > 0 THEN 'FAIL: invalid or null stage cells'
        WHEN v.duplicate_cell_count > 0 THEN 'FAIL: duplicate stage cells'
        ELSE 'PASS: copy OracleValidationSql into Oracle and run it'
    END AS "Result",
    v.cell_count AS "StageCellCount",
    v.invalid_cell_count AS "InvalidCellCount",
    v.duplicate_cell_count AS "DuplicateCellCount",
    CASE WHEN v.cell_count > 0 AND v.invalid_cell_count = 0
                   AND v.duplicate_cell_count = 0
         THEN g.oracle_sql ELSE NULL END AS "OracleValidationSql"
FROM validation v
CROSS JOIN generated g;
