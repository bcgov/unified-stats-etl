/*
===============================================================================
  05_Cleanup_BCSS_ETL_Test_Data.sql

  Cleanup is deliberately manual.
===============================================================================
*/

/* STEP 1 - PREVIEW */

WITH
params AS
(
    SELECT
        /* EDIT */
        'BCSS_ORACLE_ETL_MAPPING_TEST|20261101_A'::text AS test_run_key
)
SELECT
    sr."Id"                    AS "StatRecordId",
    sr."SubCategoryMetricId"   AS "SubCategoryMetricId",
    sr."Value"                 AS "Value",
    sr."Status"                AS "Status",
    sr."DateFrom"              AS "DateFrom",
    sr."DateTo"                AS "DateTo",
    sr."UserId"                AS "UserId",
    sr."LocationId"            AS "LocationId",
    sr."PerformedAtLocationId" AS "PerformedAtLocationId",
    sr."Comment"               AS "Comment",
    COUNT(*) OVER ()           AS "RecordsThatWouldBeDeleted"
FROM "StatRecords" sr
CROSS JOIN params p
WHERE LEFT(sr."Comment", LENGTH(p.test_run_key) + 8)
      = p.test_run_key || '|MAPSET='
ORDER BY sr."Id";


/*
===============================================================================
  STEP 2 - DELETE

  Confirm the preview first.

  Then uncomment this block. It defaults to ROLLBACK.
  Change ROLLBACK to COMMIT deliberately when ready.
===============================================================================

BEGIN;

WITH
params AS
(
    SELECT
        'BCSS_ORACLE_ETL_MAPPING_TEST|20261101_A'::text AS test_run_key
)
DELETE FROM "StatRecords" sr
USING params p
WHERE LEFT(sr."Comment", LENGTH(p.test_run_key) + 8)
      = p.test_run_key || '|MAPSET=';

ROLLBACK;

===============================================================================
*/
