/*
===============================================================================
  03_Validate_PostgreSQL_Stage.sql

  Expected success: every Result = PASS and DifferenceCount = 0.
===============================================================================
*/

WITH
params AS
(
    SELECT
        /* EDIT: fixture comment prefix, SSIS run, and explicit stage scope. */
        'BCSS_ORACLE_ETL_MAPPING_TEST|20261101_A'::text AS test_run_key,
        '00000000-0000-0000-0000-000000000000'::uuid AS load_id,
        DATE '2026-11-01' AS reporting_month,
        310::integer AS crt_loc_id
),
test_records AS
(
    SELECT
        sr.*,
        NULLIF(split_part(split_part(sr."Comment", '|MAPSET=', 2), '|', 1), '')::integer
            AS mapping_set_id
    FROM "StatRecords" sr
    CROSS JOIN params p
    WHERE LEFT(sr."Comment", LENGTH(p.test_run_key) + 8)
          = p.test_run_key || '|MAPSET='
),
mapping_sets AS
(
    SELECT ms."Id"
    FROM etl."BiOracleStatMappingSets" ms
    CROSS JOIN params p
    WHERE ms."EffectiveDate" <= p.reporting_month
      AND (ms."ExpiryDate" IS NULL OR p.reporting_month < ms."ExpiryDate")
),
mapping_set_count AS
(
    SELECT COUNT(*) AS set_count, MIN("Id") AS mapping_set_id
    FROM mapping_sets
),
selected_mapping_set AS
(
    SELECT mapping_set_id FROM mapping_set_count WHERE set_count = 1
),
fixture_locations AS
(
    SELECT DISTINCT
        l."Id" AS location_id,
        l."JustinLocationCode" AS justin_location_code
    FROM test_records tr
    JOIN "Locations" l
      ON l."Id" = COALESCE(tr."PerformedAtLocationId", tr."LocationId")
),
effective_location_mappings AS
(
    SELECT
        fl.location_id,
        COUNT(lm."Id") AS mapping_count,
        MIN(lm."CrtLocId") AS crt_loc_id
    FROM fixture_locations fl
    CROSS JOIN params p
    LEFT JOIN etl."BiOracleLocationMapping" lm
      ON lm."JustinLocationCode" = fl.justin_location_code
     AND lm."EffectiveDate" <= p.reporting_month
     AND (lm."ExpiryDate" IS NULL OR lm."ExpiryDate" >= p.reporting_month)
    GROUP BY fl.location_id
),
required_scms AS
(
    SELECT DISTINCT m."SubCategoryMetricId" AS scm_id
      FROM etl."BiOracleStatMappings" m
      JOIN selected_mapping_set ms ON ms.mapping_set_id = m."MappingSetId"
      JOIN "SubCategoryMetrics" scm ON scm."Id" = m."SubCategoryMetricId"
      JOIN "SubCategories" sc ON sc."Id" = scm."SubCategoryId"
      JOIN "StatCategories" cat ON cat."Id" = sc."CategoryId"
     WHERE COALESCE(scm."IsArchived", FALSE) = FALSE
       AND COALESCE(sc."IsArchived", FALSE) = FALSE
       AND COALESCE(cat."IsArchived", FALSE) = FALSE
),
fixture_coverage AS
(
    SELECT m.scm_id, COUNT(tr."Id") AS fixture_count
      FROM required_scms m
      LEFT JOIN test_records tr ON tr."SubCategoryMetricId" = m.scm_id
     GROUP BY m.scm_id
),
mapped_rows AS
(
    SELECT
        tr."Value",
        lm.crt_loc_id,
        CASE sg."Name"
            WHEN 'Supervision' THEN TRUE
            WHEN 'Non-Supervision' THEN FALSE
            WHEN 'Location Level' THEN FALSE
            ELSE NULL
        END AS is_supervisor,
        sg."IsLocationLevel" AS is_location_level,
        sm."UnitOfMeasure",
        sm."IsOvertime",
        m."TargetTable",
        m."TargetColumn"
    FROM test_records tr
    CROSS JOIN params p
    JOIN selected_mapping_set ms
      ON ms.mapping_set_id = tr.mapping_set_id
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
    JOIN effective_location_mappings lm
      ON lm.location_id = l."Id"
     AND lm.mapping_count = 1
     AND lm.crt_loc_id = p.crt_loc_id
    JOIN etl."BiOracleStatMappings" m
      ON m."MappingSetId" = ms.mapping_set_id
     AND m."SubCategoryMetricId" = tr."SubCategoryMetricId"
    WHERE tr."Status" = 'SignedOff'
      AND COALESCE(scm."IsArchived", FALSE) = FALSE
      AND COALESCE(sc."IsArchived", FALSE) = FALSE
      AND COALESCE(cat."IsArchived", FALSE) = FALSE
      AND tr."DateFrom" < (p.reporting_month + INTERVAL '1 month')
      AND tr."DateTo" >= p.reporting_month
),
component_aggregated AS
(
    SELECT
        m.crt_loc_id,
        m.is_supervisor,
        m."TargetTable" AS target_table,
        m."TargetColumn" AS target_column,
        CASE
            WHEN m."TargetTable" = 'SHERIFF_SRVCES'
             AND LOWER(COALESCE(m."UnitOfMeasure", '')) = 'hours'
            THEN m."IsOvertime"
            ELSE NULL
        END AS hour_component_is_overtime,
        BOOL_OR(m.is_location_level) AS is_location_level,
        SUM(m."Value") AS component_value,
        COUNT(*) AS component_source_row_count
    FROM mapped_rows m
    GROUP BY
        m.crt_loc_id,
        m.is_supervisor,
        m."TargetTable",
        m."TargetColumn",
        CASE
            WHEN m."TargetTable" = 'SHERIFF_SRVCES'
             AND LOWER(COALESCE(m."UnitOfMeasure", '')) = 'hours'
            THEN m."IsOvertime"
            ELSE NULL
        END
),
aggregated AS
(
    SELECT
        p.reporting_month,
        c.crt_loc_id,
        c.is_supervisor,
        BOOL_OR(c.is_location_level) AS is_location_level,
        c.target_table,
        c.target_column,
        SUM(
            CASE
                WHEN c.target_table = 'SHERIFF_SRVCES'
                 AND c.hour_component_is_overtime IS NOT NULL
                THEN GREATEST(c.component_value, 0)
                ELSE c.component_value
            END
        ) AS expected_value,
        SUM(c.component_source_row_count) AS expected_source_row_count
    FROM component_aggregated c
    CROSS JOIN params p
    GROUP BY
        p.reporting_month,
        c.crt_loc_id,
        c.is_supervisor,
        c.target_table,
        c.target_column
),
expected_cells AS
(
    SELECT * FROM aggregated
    WHERE target_table <> 'SHERIFF_SRVCES_HOURS' OR expected_value > 0
),
actual_cells AS
(
    SELECT
        s."ReportingMonth" AS reporting_month,
        s."CrtLocId" AS crt_loc_id,
        s."IsSupervisor" AS is_supervisor,
        BOOL_OR(s."IsLocationLevel") AS is_location_level,
        s."TargetTable" AS target_table,
        s."TargetColumn" AS target_column,
        MIN(s."StatValue") AS actual_value,
        MIN(s."SourceRowCount") AS actual_source_row_count,
        COUNT(*) AS actual_row_count
    FROM etl."BiOracleStatStages" s
    CROSS JOIN params p
    WHERE s."LoadId" = p.load_id
      AND s."ReportingMonth" = p.reporting_month
      AND s."CrtLocId" = p.crt_loc_id
    GROUP BY
        s."ReportingMonth",
        s."CrtLocId",
        s."IsSupervisor",
        s."TargetTable",
        s."TargetColumn"
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
            WHEN e.reporting_month IS NULL THEN 'UNEXPECTED_ACTUAL_CELL'
            WHEN a.reporting_month IS NULL THEN 'MISSING_ACTUAL_CELL'
            WHEN a.actual_row_count > 1 THEN 'DUPLICATE_ACTUAL_CELL'
            WHEN e.expected_value IS DISTINCT FROM a.actual_value THEN 'VALUE_MISMATCH'
            WHEN e.expected_source_row_count IS DISTINCT FROM a.actual_source_row_count
                THEN 'SOURCE_ROW_COUNT_MISMATCH'
            WHEN e.is_location_level IS DISTINCT FROM a.is_location_level
                THEN 'LOCATION_LEVEL_FLAG_MISMATCH'
            ELSE 'PASS'
        END AS result
    FROM expected_cells e
    FULL OUTER JOIN actual_cells a
      ON a.reporting_month = e.reporting_month
     AND a.crt_loc_id = e.crt_loc_id
     AND a.is_supervisor IS NOT DISTINCT FROM e.is_supervisor
     AND a.target_table = e.target_table
     AND a.target_column = e.target_column
),
checks AS
(
    SELECT
        (SELECT COUNT(*) FROM test_records) AS fixture_count,
        (SELECT set_count FROM mapping_set_count) AS applicable_set_count,
        (SELECT COUNT(*) FROM test_records tr CROSS JOIN selected_mapping_set ms
         WHERE tr.mapping_set_id IS DISTINCT FROM ms.mapping_set_id) AS wrong_set_count,
        (SELECT COUNT(*) FROM test_records tr LEFT JOIN "Locations" l
           ON l."Id" = COALESCE(tr."PerformedAtLocationId", tr."LocationId")
         WHERE l."Id" IS NULL) AS missing_location_count,
        (SELECT COUNT(*) FROM effective_location_mappings WHERE mapping_count = 0)
            AS missing_location_mapping_count,
        (SELECT COUNT(*) FROM effective_location_mappings WHERE mapping_count > 1)
            AS duplicate_location_mapping_count,
        (SELECT COUNT(*) FROM effective_location_mappings
         WHERE mapping_count = 1 AND crt_loc_id IS DISTINCT FROM p.crt_loc_id)
            AS out_of_scope_location_count,
        (SELECT COUNT(*) FROM expected_cells) AS expected_count,
        (SELECT COUNT(*) FROM actual_cells) AS actual_count,
        (SELECT COUNT(*) FROM etl."BiOracleStatMappings" m
          JOIN selected_mapping_set ms ON ms.mapping_set_id = m."MappingSetId")
            AS mapping_row_count,
        (SELECT COUNT(*) FROM test_records
          WHERE "SubCategoryMetricId" BETWEEN 449 AND 511)
            AS expanded_fixture_count,
        (SELECT COUNT(*) FROM fixture_coverage WHERE fixture_count <> 1)
            AS missing_or_duplicate_fixture_scm_count,
        (SELECT COUNT(*) FROM test_records tr
          WHERE NOT EXISTS (SELECT 1 FROM required_scms m
             WHERE m.scm_id = tr."SubCategoryMetricId"))
            AS unmapped_fixture_scm_count
    FROM params p
),
validation_failures AS
(
    SELECT
        p.reporting_month,
        p.crt_loc_id,
        NULL::boolean AS is_supervisor,
        'VALIDATION'::text AS target_table,
        diagnostics.result::text AS target_column,
        NULL::numeric AS expected_value,
        NULL::numeric AS actual_value,
        NULL::bigint AS expected_source_row_count,
        NULL::bigint AS actual_source_row_count,
        NULL::boolean AS expected_is_location_level,
        NULL::boolean AS actual_is_location_level,
        diagnostics.result::text AS result
    FROM params p
    CROSS JOIN checks c
    CROSS JOIN LATERAL
    (
        VALUES
            ('INVALID_TEST_SCOPE', p.test_run_key IS NULL OR BTRIM(p.test_run_key) = ''
                OR p.load_id IS NULL OR p.reporting_month IS NULL OR p.crt_loc_id IS NULL
                OR p.reporting_month <> DATE_TRUNC('month', p.reporting_month)::date),
            ('MISSING_TEST_FIXTURE', c.fixture_count = 0),
            ('INCOMPLETE_MAPPING_SET', c.mapping_row_count <> 661),
            ('INCOMPLETE_EXPANDED_FIXTURE', c.expanded_fixture_count <> 63),
            ('MISSING_OR_DUPLICATE_MAPPED_FIXTURE_SCM', c.missing_or_duplicate_fixture_scm_count > 0),
            ('UNMAPPED_FIXTURE_SCM', c.unmapped_fixture_scm_count > 0),
            ('NO_APPLICABLE_MAPPING_SET', c.applicable_set_count = 0),
            ('MULTIPLE_APPLICABLE_MAPPING_SETS', c.applicable_set_count > 1),
            ('FIXTURE_MAPPING_SET_MISMATCH', c.wrong_set_count > 0),
            ('MISSING_FIXTURE_LOCATION', c.missing_location_count > 0),
            ('MISSING_EFFECTIVE_LOCATION_MAPPING', c.missing_location_mapping_count > 0),
            ('MULTIPLE_EFFECTIVE_LOCATION_MAPPINGS', c.duplicate_location_mapping_count > 0),
            ('FIXTURE_LOCATION_OUT_OF_SCOPE', c.out_of_scope_location_count > 0),
            ('EMPTY_EXPECTED_POPULATION', c.expected_count = 0),
            ('NO_STAGE_ROWS_FOR_LOAD_AND_SCOPE', c.actual_count = 0)
    ) AS diagnostics(result, failed)
    WHERE diagnostics.failed
),
all_results AS
(
    SELECT * FROM comparison
    UNION ALL
    SELECT * FROM validation_failures
),
validated AS
(
    SELECT
        r.*,
        COUNT(*) FILTER (WHERE r.result <> 'PASS') OVER () AS difference_count,
        COUNT(*) OVER () AS compared_cell_count
    FROM all_results r
)
SELECT
    reporting_month                 AS "ReportingMonth",
    crt_loc_id                      AS "CrtLocId",
    CASE
        WHEN is_supervisor THEN 'Y'
        WHEN is_supervisor = FALSE THEN 'N'
        ELSE NULL
    END                             AS "SupervisorYn",
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
