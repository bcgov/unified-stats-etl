/*
===============================================================================
  03_Validate_PostgreSQL_Stage.sql

  Expected success:
      every Result = PASS
      DifferenceCount = 0
===============================================================================
*/

WITH
params AS
(
    SELECT
        /* EDIT */
        'BCSS_ORACLE_ETL_MAPPING_TEST|20261005_A'::text AS test_run_key,

        /* EDIT */
        '00000000-0000-0000-0000-000000000000'::uuid AS load_id
),
test_records AS
(
    SELECT
        sr.*,
        split_part(
            split_part(sr."Comment", '|MAPSET=', 2),
            '|',
            1
        )::integer AS mapping_set_id
    FROM "StatRecords" sr
    CROSS JOIN params p
    WHERE LEFT(sr."Comment", LENGTH(p.test_run_key) + 8)
          = p.test_run_key || '|MAPSET='
),
fixture_meta AS
(
    SELECT
        MIN(DATE_TRUNC('month', tr."DateFrom")::date) AS reporting_month,
        MIN(tr.mapping_set_id) AS mapping_set_id
    FROM test_records tr
),
expected_source AS
(
    SELECT
        tr."Id" AS stat_record_id,
        tr.mapping_set_id,
        tr."SubCategoryMetricId" AS scm_id,
        tr."Value" AS stat_value,
        sg."Name" AS stat_group,
        sg."IsLocationLevel" AS is_location_level,
        lm."CrtLocId" AS crt_loc_id
    FROM test_records tr
    JOIN "SubCategoryMetrics" scm
      ON scm."Id" = tr."SubCategoryMetricId"
    JOIN "SubCategories" sc
      ON sc."Id" = scm."SubCategoryId"
    JOIN "StatCategories" cat
      ON cat."Id" = sc."CategoryId"
    JOIN "StatGroups" sg
      ON sg."Id" = cat."GroupId"
    JOIN "StatMetrics" sm
      ON sm."Id" = scm."MetricId"
    JOIN "Locations" l
      ON l."Id" = COALESCE(tr."PerformedAtLocationId", tr."LocationId")
    JOIN etl."BiOracleLocationMapping" lm
      ON lm."JustinLocationCode" = l."JustinLocationCode"
    WHERE tr."Status" IN ('Submitted', 'SignedOff')
      AND COALESCE(cat."IsArchived", FALSE) = FALSE
      AND COALESCE(sc."IsArchived", FALSE) = FALSE
),
expected_cells AS
(
    SELECT
        fm.reporting_month,
        es.crt_loc_id,
        CASE es.stat_group
            WHEN 'Supervision' THEN TRUE
            WHEN 'Non-Supervision' THEN FALSE
            WHEN 'Location Level' THEN FALSE
        END AS is_supervisor,
        BOOL_OR(es.is_location_level) AS is_location_level,
        m."TargetTable" AS target_table,
        m."TargetColumn" AS target_column,
        SUM(es.stat_value) AS expected_value,
        COUNT(*)::integer AS expected_source_row_count
    FROM expected_source es
    JOIN fixture_meta fm
      ON fm.mapping_set_id = es.mapping_set_id
    JOIN etl."BiOracleStatMappings" m
      ON m."MappingSetId" = es.mapping_set_id
     AND m."SubCategoryMetricId" = es.scm_id
    GROUP BY
        fm.reporting_month,
        es.crt_loc_id,
        CASE es.stat_group
            WHEN 'Supervision' THEN TRUE
            WHEN 'Non-Supervision' THEN FALSE
            WHEN 'Location Level' THEN FALSE
        END,
        m."TargetTable",
        m."TargetColumn"
),
scope AS
(
    SELECT DISTINCT reporting_month, crt_loc_id
    FROM expected_cells
),
actual_cells AS
(
    SELECT
        s."ReportingMonth" AS reporting_month,
        s."CrtLocId" AS crt_loc_id,
        s."IsSupervisor" AS is_supervisor,
        s."IsLocationLevel" AS is_location_level,
        s."TargetTable" AS target_table,
        s."TargetColumn" AS target_column,
        s."StatValue" AS actual_value,
        s."SourceRowCount" AS actual_source_row_count
    FROM etl."BiOracleStatStages" s
    CROSS JOIN params p
    WHERE s."LoadId" = p.load_id
      AND EXISTS
          (
              SELECT 1
              FROM scope sc
              WHERE sc.reporting_month = s."ReportingMonth"
                AND sc.crt_loc_id = s."CrtLocId"
          )
),
comparison AS
(
    SELECT
        COALESCE(e.reporting_month, a.reporting_month) AS reporting_month,
        COALESCE(e.crt_loc_id, a.crt_loc_id) AS crt_loc_id,
        COALESCE(e.is_supervisor, a.is_supervisor) AS is_supervisor,
        COALESCE(e.target_table, a.target_table) AS target_table,
        COALESCE(e.target_column, a.target_column) AS target_column,
        e.expected_value,
        a.actual_value,
        e.expected_source_row_count,
        a.actual_source_row_count,
        e.is_location_level AS expected_is_location_level,
        a.is_location_level AS actual_is_location_level,
        CASE
            WHEN e.target_column IS NULL THEN 'UNEXPECTED_ACTUAL_CELL'
            WHEN a.target_column IS NULL THEN 'MISSING_ACTUAL_CELL'
            WHEN e.expected_value IS DISTINCT FROM a.actual_value
                THEN 'VALUE_MISMATCH'
            WHEN e.expected_source_row_count
                 IS DISTINCT FROM a.actual_source_row_count
                THEN 'SOURCE_ROW_COUNT_MISMATCH'
            WHEN e.is_location_level
                 IS DISTINCT FROM a.is_location_level
                THEN 'LOCATION_LEVEL_FLAG_MISMATCH'
            ELSE 'PASS'
        END AS result
    FROM expected_cells e
    FULL OUTER JOIN actual_cells a
      ON a.reporting_month = e.reporting_month
     AND a.crt_loc_id = e.crt_loc_id
     AND a.is_supervisor = e.is_supervisor
     AND a.target_table = e.target_table
     AND a.target_column = e.target_column
),
validated AS
(
    SELECT
        c.*,
        COUNT(*) FILTER (WHERE c.result <> 'PASS') OVER () AS difference_count,
        COUNT(*) OVER () AS compared_cell_count
    FROM comparison c
)
SELECT
    reporting_month                 AS "ReportingMonth",
    crt_loc_id                      AS "CrtLocId",
    CASE WHEN is_supervisor THEN 'Y' ELSE 'N' END
                                    AS "SupervisorYn",
    target_table                    AS "TargetTable",
    target_column                   AS "TargetColumn",
    expected_value                  AS "ExpectedValue",
    actual_value                    AS "ActualValue",
    expected_source_row_count       AS "ExpectedSourceRowCount",
    actual_source_row_count         AS "ActualSourceRowCount",
    expected_is_location_level      AS "ExpectedIsLocationLevel",
    actual_is_location_level        AS "ActualIsLocationLevel",
    result                          AS "Result",
    difference_count                AS "DifferenceCount",
    compared_cell_count             AS "ComparedCellCount"
FROM validated
ORDER BY
    CASE WHEN result = 'PASS' THEN 1 ELSE 0 END,
    target_table,
    is_supervisor,
    target_column;
