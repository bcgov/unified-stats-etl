/*
===============================================================================
  02_Review_BCSS_ETL_Test_Data.sql
  Produces one result set.
===============================================================================
*/

WITH
params AS
(
    SELECT
        /* EDIT */
        'BCSS_ORACLE_ETL_MAPPING_TEST|20261101_A'::text AS test_run_key
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
record_detail AS
(
    SELECT
        tr."Id" AS stat_record_id,
        tr."DateFrom" AS reporting_date,
        tr.mapping_set_id,
        tr."SubCategoryMetricId" AS scm_id,
        sg."Name" AS stat_group,
        cat."Name" AS category,
        sc."Name" AS subcategory,
        sm."Name" AS metric,
        sm."UnitOfMeasure" AS unit_of_measure,
        COALESCE(sm."IsOvertime", FALSE) AS is_overtime,
        tr."Value" AS test_value,
        tr."LocationId" AS location_id,
        tr."PerformedAtLocationId" AS performed_at_location_id,
        tr."UserId" AS user_id,
        tr."Comment" AS comment
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
),
targets AS
(
    SELECT
        rd.stat_record_id,
        STRING_AGG(
            m."TargetTable" || '.' || m."TargetColumn",
            ', '
            ORDER BY m."TargetTable", m."TargetColumn"
        ) AS oracle_targets,
        COUNT(*) AS mapping_rows_for_scm
    FROM record_detail rd
    JOIN etl."BiOracleStatMappings" m
      ON m."MappingSetId" = rd.mapping_set_id
     AND m."SubCategoryMetricId" = rd.scm_id
    GROUP BY rd.stat_record_id
),
final AS
(
    SELECT
        rd.*,
        t.mapping_rows_for_scm,
        t.oracle_targets
    FROM record_detail rd
    LEFT JOIN targets t
      ON t.stat_record_id = rd.stat_record_id
)
SELECT
    stat_record_id               AS "StatRecordId",
    scm_id                       AS "SubCategoryMetricId",
    stat_group                   AS "StatGroup",
    category                     AS "Category",
    subcategory                  AS "SubCategory",
    metric                       AS "Metric",
    unit_of_measure              AS "UnitOfMeasure",
    is_overtime                  AS "IsOvertime",
    test_value                   AS "Value",
    mapping_rows_for_scm         AS "MappingRowsForScm",
    oracle_targets               AS "OracleTargets",
    mapping_set_id               AS "MappingSetId",
    reporting_date               AS "ReportingDate",
    location_id                  AS "LocationId",
    performed_at_location_id     AS "PerformedAtLocationId",
    user_id                      AS "UserId",
    COUNT(*) OVER ()             AS "TestRecordCount",
    (SELECT COUNT(DISTINCT scm_id) FROM final)
                                  AS "DistinctScmCount",
    comment                      AS "Comment"
FROM final
ORDER BY
    stat_group,
    category,
    subcategory,
    metric,
    scm_id;
