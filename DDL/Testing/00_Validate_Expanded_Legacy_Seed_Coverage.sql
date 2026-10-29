/*
===============================================================================
  00_Validate_Expanded_Legacy_Seed_Coverage.sql

  Read-only PostgreSQL contract test for unified-scheduling PR #419 (SS-1107).
  Run AFTER its seeders have populated the source DB and BEFORE creating the
  fixture. Every Result must be PASS. No Oracle/SSIS connection is required.

  The expected source IDs and target contributions are deliberately independent
  of etl."BiOracleStatMappings", so missing mappings cannot silently disappear
  from the dynamic end-to-end fixture.
===============================================================================
*/
WITH
params AS
(
    SELECT DATE '2026-11-01' AS reporting_month
),
applicable_sets AS
(
    SELECT ms."Id"
      FROM etl."BiOracleStatMappingSets" ms
      CROSS JOIN params p
     WHERE ms."EffectiveDate" <= p.reporting_month
       AND (ms."ExpiryDate" IS NULL OR p.reporting_month < ms."ExpiryDate")
),
selected_set AS
(
    SELECT MIN("Id") AS mapping_set_id, COUNT(*) AS set_count
      FROM applicable_sets
),
expected_scm AS
(
    -- 12 holding-cell demographic/segregation values: 6 demographics x 2 metrics.
    SELECT id AS scm_id, 117 + (id - 449) / 2 AS subcategory_id,
           33 + (id - 449) % 2 AS metric_id, 29 AS category_id, 3 AS group_id
      FROM generate_series(449, 460) AS id
    UNION ALL
    -- 24 Air transport values: 6 demographics x 4 classification metrics.
    SELECT id, 123 + (id - 461) / 4,
           (ARRAY[36, 38, 40, 42])[(id - 461) % 4 + 1], 27, 3
      FROM generate_series(461, 484) AS id
    UNION ALL
    -- 24 Ground transport values.
    SELECT id, 129 + (id - 485) / 4,
           (ARRAY[37, 39, 41, 42])[(id - 485) % 4 + 1], 28, 3
      FROM generate_series(485, 508) AS id
    UNION ALL
    SELECT 509, 92, 29, 26, 3 -- Circuit court trips
    UNION ALL
    SELECT 510, 135, 1, 37, 2 -- Non-frontline supervisory regular hours
    UNION ALL
    SELECT 511, 135, 2, 37, 2 -- Non-frontline supervisory overtime hours
),
transport_cells AS
(
    SELECT mode.mode, mode.first_id + demo.ordinal * 4 + cls.ordinal AS scm_id,
           demo.code AS demographic_code, cls.code AS classification,
           cls.ordinal AS classification_index
      FROM (VALUES ('AIR', 461), ('GRD', 485)) AS mode(mode, first_id)
      CROSS JOIN (VALUES
          ('AMAL', 0), ('FMAL', 1), ('YMAL', 2),
          ('AFEM', 3), ('FFEM', 4), ('YFEM', 5)
      ) AS demo(code, ordinal)
      CROSS JOIN (VALUES
          ('L1', 0), ('L2', 1), ('L3', 2), ('SEG_PC', 3)
      ) AS cls(code, ordinal)
),
expected_targets AS
(
    SELECT 448 + h.ordinal::integer AS scm_id,
           'SHERIFF_SRVCES'::text AS target_table, h.target_column::text AS target_column
      FROM unnest(ARRAY[
          'HLD_AMAL_CNT', 'SEG_AMAL_CNT', 'FED_AMAL_CNT', 'FED_SEG_AMAL_CNT',
          'HLD_YMAL_CNT', 'SEG_YMAL_CNT', 'HLD_AFEM_CNT', 'SEG_AFEM_CNT',
          'FED_AFEM_CNT', 'FED_SEG_AFEM_CNT', 'HLD_YFEM_CNT', 'SEG_YFEM_CNT'
      ]) WITH ORDINALITY AS h(target_column, ordinal)
    UNION ALL
    -- The detailed transport cells are independent of the workbook Auto Sums.
    SELECT tc.scm_id, 'SHERIFF_SRVCES',
           tc.mode || '_' || tc.demographic_code || '_CNT_' || tc.classification
      FROM transport_cells tc
    UNION ALL
    -- Workbook totals exclude Federal males and females, but include youth.
    SELECT tc.scm_id, 'SHERIFF_SRVCES',
           tc.mode || '_' || tc.demographic_code || '_CNT'
      FROM transport_cells tc
     WHERE tc.demographic_code NOT IN ('FMAL', 'FFEM')
    UNION ALL
    -- Only levels 1 and 2 contribute to the workbook level totals.
    SELECT tc.scm_id, 'SHERIFF_SRVCES',
           tc.mode || '_LVL' || (tc.classification_index + 1)::text || '_CNT'
      FROM transport_cells tc
     WHERE tc.demographic_code NOT IN ('FMAL', 'FFEM')
       AND tc.classification_index IN (0, 1)
    UNION ALL
    SELECT u.scm_id, 'SHERIFF_SRVCES', 'AIR_SHRF_HRS'
      FROM unnest(ARRAY[112,113,114,115,116,117,316,317,318,319,320,321]) AS u(scm_id)
    UNION ALL
    SELECT u.scm_id, 'SHERIFF_SRVCES', 'GRD_SHRF_HRS'
      FROM unnest(ARRAY[124,125,126,127,128,129,325,326,327,328,329,330]) AS u(scm_id)
    UNION ALL
    SELECT additional.scm_id, additional.target_table, additional.target_column
      FROM (VALUES
          (509, 'SHERIFF_SRVCES',       'CCRT_TRIPS_CNT'),
          (510, 'SHERIFF_SRVCES',       'SUP_DUTIES_N_FRONT_LINE'),
          (511, 'SHERIFF_SRVCES',       'SUP_DUTIES_N_FRONT_LINE'),
          (510, 'SHERIFF_SRVCES_HOURS', 'SUP_DUTIES_N_FRONT_LINE_REG'),
          (511, 'SHERIFF_SRVCES_HOURS', 'SUP_DUTIES_N_FRONT_LINE_OT'),
          (435, 'SHERIFF_SRVCES', 'CVF_DOCS_RCVD'),
          (436, 'SHERIFF_SRVCES', 'CVF_DOCS_CONC'),
          (437, 'SHERIFF_SRVCES', 'CVF_OTHR_RCVD'),
          (438, 'SHERIFF_SRVCES', 'CVF_OTHR_CONC'),
          (443, 'SHERIFF_SRVCES', 'CRIM_DOCS_RCVD'),
          (444, 'SHERIFF_SRVCES', 'CRIM_DOCS_CONC'),
          (445, 'SHERIFF_SRVCES', 'CRIM_OTHR_RCVD'),
          (446, 'SHERIFF_SRVCES', 'CRIM_OTHR_CONC')
      ) AS additional(scm_id, target_table, target_column)
),
actual_mapping AS
(
    SELECT m."Id" AS mapping_id, m."SubCategoryMetricId" AS scm_id,
           m."TargetTable"::text AS target_table,
           m."TargetColumn"::text AS target_column
      FROM etl."BiOracleStatMappings" m
      CROSS JOIN selected_set ss
     WHERE m."MappingSetId" = ss.mapping_set_id
       AND ss.set_count = 1
),
source_checks AS
(
    SELECT es.scm_id,
           (scm."Id" IS NOT NULL AND scm."SubCategoryId" = es.subcategory_id
               AND scm."MetricId" = es.metric_id
               AND COALESCE(scm."IsArchived", FALSE) = FALSE
               AND sc."CategoryId" = es.category_id
               AND COALESCE(sc."IsArchived", FALSE) = FALSE
               AND cat."GroupId" = es.group_id
               AND COALESCE(cat."IsArchived", FALSE) = FALSE) AS valid
      FROM expected_scm es
      LEFT JOIN "SubCategoryMetrics" scm ON scm."Id" = es.scm_id
      LEFT JOIN "SubCategories" sc ON sc."Id" = scm."SubCategoryId"
      LEFT JOIN "StatCategories" cat ON cat."Id" = sc."CategoryId"
),
target_checks AS
(
    SELECT et.scm_id, et.target_table, et.target_column,
           COUNT(am.mapping_id) AS mapping_count
      FROM expected_targets et
      LEFT JOIN actual_mapping am
        ON am.scm_id = et.scm_id
       AND am.target_table = et.target_table
       AND am.target_column = et.target_column
     GROUP BY et.scm_id, et.target_table, et.target_column
),
issues AS
(
    SELECT 'MAPPING_SET'::text AS check_name,
           'Expected exactly mapping set 1 effective for November 2026'::text AS detail
      FROM selected_set ss
     WHERE ss.set_count <> 1 OR ss.mapping_set_id <> 1
    UNION ALL
    SELECT 'MAPPING_COUNT', 'Expected 661 total mapping rows, found ' || COUNT(*)::text
      FROM actual_mapping
     HAVING COUNT(*) <> 661
    UNION ALL
    SELECT 'SOURCE_TAXONOMY', 'SCM ' || scm_id::text || ' missing, misclassified, or archived'
      FROM source_checks WHERE valid IS DISTINCT FROM TRUE
    UNION ALL
    SELECT 'MAPPING_CONTRIBUTION', 'SCM ' || scm_id::text || ' -> '
           || target_table || '.' || target_column
           || ' expected once, found ' || mapping_count::text
      FROM target_checks WHERE mapping_count <> 1
    UNION ALL
    SELECT 'UNEXPECTED_ADDED_MAPPING', 'Mapping ID ' || am.mapping_id::text
           || ': SCM ' || am.scm_id::text || ' -> ' || am.target_table || '.' || am.target_column
      FROM actual_mapping am
     WHERE am.mapping_id BETWEEN 517 AND 661
       AND NOT EXISTS
           (SELECT 1 FROM expected_targets et
             WHERE et.scm_id = am.scm_id
               AND et.target_table = am.target_table
               AND et.target_column = am.target_column)
    UNION ALL
    SELECT 'INACTIVE_AUTOSUM_SOURCE', 'SCM ' || id.scm_id::text
      FROM (SELECT DISTINCT scm_id FROM expected_targets) id
      LEFT JOIN "SubCategoryMetrics" scm ON scm."Id" = id.scm_id
      LEFT JOIN "SubCategories" sc ON sc."Id" = scm."SubCategoryId"
      LEFT JOIN "StatCategories" cat ON cat."Id" = sc."CategoryId"
     WHERE scm."Id" IS NULL OR sc."Id" IS NULL OR cat."Id" IS NULL
        OR COALESCE(scm."IsArchived", FALSE)
        OR COALESCE(sc."IsArchived", FALSE)
        OR COALESCE(cat."IsArchived", FALSE)
    UNION ALL
    SELECT 'RETIRED_SCM_ACTIVE', 'SCM ' || r.id::text || ' must remain archived'
      FROM unnest(ARRAY[408,409,410,411,412,413,418,419,420,421,422,423,424,425,426,427]) r(id)
      LEFT JOIN "SubCategoryMetrics" scm ON scm."Id" = r.id
     WHERE scm."Id" IS NULL OR COALESCE(scm."IsArchived", FALSE) = FALSE
    UNION ALL
    SELECT 'RETIRED_LOCATION_ENTRY_ACTIVE', 'Legacy location-level ID ' || r.id::text ||
           ' must remain archived'
      FROM (VALUES ('StatCategories', 32), ('StatCategories', 33),
                   ('SubCategories', 106), ('SubCategories', 107)) AS r(kind, id)
      LEFT JOIN "StatCategories" cat ON r.kind = 'StatCategories' AND cat."Id" = r.id
      LEFT JOIN "SubCategories" sc ON r.kind = 'SubCategories' AND sc."Id" = r.id
     WHERE (r.kind = 'StatCategories' AND
               (cat."Id" IS NULL OR COALESCE(cat."IsArchived", FALSE) = FALSE))
        OR (r.kind = 'SubCategories' AND
               (sc."Id" IS NULL OR COALESCE(sc."IsArchived", FALSE) = FALSE))
)
SELECT 'PASS'::text AS "Result", 'EXPANDED_LEGACY_SEED_COVERAGE'::text AS "Check",
       '63 source SCMs and 145 added mapping contributions validated'::text AS "Detail"
 WHERE NOT EXISTS (SELECT 1 FROM issues)
UNION ALL
SELECT 'FAIL', check_name, detail
  FROM issues
ORDER BY "Result", "Check", "Detail";
