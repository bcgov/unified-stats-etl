/*
===============================================================================
  01_Create_BCSS_ETL_Test_Data.sql
===============================================================================
*/

BEGIN;

DO
$$
DECLARE
    ---------------------------------------------------------------------------
    -- EDIT THESE PARAMETERS
    ---------------------------------------------------------------------------
    v_location_id               integer := 12345;
    v_user_id                   uuid    := '00000000-0000-0000-0000-000000000000'::uuid;
    v_reporting_month           date    := DATE '2026-09-01';

    -- NULL means use v_location_id.
    v_performed_at_location_id  integer := NULL;

    -- Must be unique for this test execution.
    v_test_run_key              text    := 'BCSS_ORACLE_ETL_MAPPING_TEST|20261005_A';

    ---------------------------------------------------------------------------
    -- Resolved / working values
    ---------------------------------------------------------------------------
    v_mapping_set_id            integer;
    v_crt_loc_id                integer;
    v_mapping_set_count         integer;
    v_mapping_row_count         integer;
    v_distinct_scm_count        integer;
    v_inserted_non_ot           integer;
    v_inserted_ot               integer;
    v_existing_count            integer;
    v_unusable_mapping_count    integer;
    v_unsafe_target_count       integer;
    v_regular_hours             numeric;
    v_ot_scm_count              integer;
    v_crosswalk_count           integer;
    v_test_key_count            integer;
BEGIN
    v_performed_at_location_id :=
        COALESCE(v_performed_at_location_id, v_location_id);

    IF v_reporting_month <> DATE_TRUNC('month', v_reporting_month)::date THEN
        RAISE EXCEPTION
            'v_reporting_month must be the first day of the month. Received %.',
            v_reporting_month;
    END IF;

    IF v_test_run_key IS NULL OR BTRIM(v_test_run_key) = '' THEN
        RAISE EXCEPTION 'v_test_run_key is required.';
    END IF;

    SELECT COUNT(*)
      INTO v_test_key_count
      FROM "StatRecords" sr
     WHERE LEFT(sr."Comment", LENGTH(v_test_run_key) + 8)
           = v_test_run_key || '|MAPSET=';

    IF v_test_key_count <> 0 THEN
        RAISE EXCEPTION
            'TestRunKey % is already used by % StatRecord(s). Choose a unique key.',
            v_test_run_key,
            v_test_key_count;
    END IF;

    IF (SELECT COUNT(*) FROM "Users" WHERE "Id" = v_user_id) <> 1 THEN
        RAISE EXCEPTION 'UserId % does not resolve to exactly one Users row.', v_user_id;
    END IF;

    IF (SELECT COUNT(*) FROM "Locations" WHERE "Id" = v_location_id) <> 1 THEN
        RAISE EXCEPTION
            'LocationId % does not resolve to exactly one Locations row.',
            v_location_id;
    END IF;

    IF (SELECT COUNT(*) FROM "Locations"
         WHERE "Id" = v_performed_at_location_id) <> 1 THEN
        RAISE EXCEPTION
            'PerformedAtLocationId % does not resolve to exactly one Locations row.',
            v_performed_at_location_id;
    END IF;

    ---------------------------------------------------------------------------
    -- Resolve applicable mapping set.
    ---------------------------------------------------------------------------
    IF to_regclass('etl."BiOracleStatMappingSets"') IS NOT NULL THEN
        EXECUTE
        '
            SELECT COUNT(*), MIN("Id")
              FROM etl."BiOracleStatMappingSets"
             WHERE "EffectiveDate" <= $1
               AND ("ExpiryDate" IS NULL OR $1 < "ExpiryDate")
        '
        INTO v_mapping_set_count, v_mapping_set_id
        USING v_reporting_month;

    ELSIF to_regclass('etl."BiOracleStatMappingSet"') IS NOT NULL THEN
        EXECUTE
        '
            SELECT COUNT(*), MIN("Id")
              FROM etl."BiOracleStatMappingSet"
             WHERE "EffectiveDate" <= $1
               AND ("ExpiryDate" IS NULL OR $1 < "ExpiryDate")
        '
        INTO v_mapping_set_count, v_mapping_set_id
        USING v_reporting_month;

    ELSE
        RAISE EXCEPTION
            'Could not find etl.BiOracleStatMappingSets or etl.BiOracleStatMappingSet.';
    END IF;

    IF v_mapping_set_count <> 1 THEN
        RAISE EXCEPTION
            'Expected exactly one mapping set for %, found %.',
            v_reporting_month,
            v_mapping_set_count;
    END IF;

    ---------------------------------------------------------------------------
    -- Resolve CRT_LOC_ID using the effective performed-at location.
    ---------------------------------------------------------------------------
    SELECT COUNT(*), MIN(lm."CrtLocId")
      INTO v_crosswalk_count, v_crt_loc_id
      FROM "Locations" l
      JOIN etl."BiOracleLocationMapping" lm
        ON lm."JustinLocationCode" = l."JustinLocationCode"
       AND lm."EffectiveDate" <= v_reporting_month
       AND (lm."ExpiryDate" IS NULL OR lm."ExpiryDate" >= v_reporting_month)
     WHERE l."Id" = v_performed_at_location_id;

    IF v_crosswalk_count <> 1 THEN
        RAISE EXCEPTION
            'Expected exactly one Oracle location crosswalk for PerformedAtLocationId %, found %.',
            v_performed_at_location_id,
            v_crosswalk_count;
    END IF;

    SELECT COUNT(*),
           COUNT(DISTINCT "SubCategoryMetricId")
      INTO v_mapping_row_count,
           v_distinct_scm_count
      FROM etl."BiOracleStatMappings" m
      JOIN "SubCategoryMetrics" scm ON scm."Id" = m."SubCategoryMetricId"
      JOIN "SubCategories" sc ON sc."Id" = scm."SubCategoryId"
      JOIN "StatCategories" cat ON cat."Id" = sc."CategoryId"
     WHERE m."MappingSetId" = v_mapping_set_id
       AND COALESCE(scm."IsArchived", FALSE) = FALSE
       AND COALESCE(sc."IsArchived", FALSE) = FALSE
       AND COALESCE(cat."IsArchived", FALSE) = FALSE;

    IF v_mapping_row_count = 0 THEN
        RAISE EXCEPTION 'MappingSetId % contains no eligible mappings.', v_mapping_set_id;
    END IF;

    ---------------------------------------------------------------------------
    -- Ensure every mapping is actually exercisable by production staging.
    ---------------------------------------------------------------------------
    SELECT COUNT(*)
      INTO v_unusable_mapping_count
      FROM etl."BiOracleStatMappings" m
      LEFT JOIN "SubCategoryMetrics" scm
        ON scm."Id" = m."SubCategoryMetricId"
      LEFT JOIN "SubCategories" sc
        ON sc."Id" = scm."SubCategoryId"
      LEFT JOIN "StatCategories" cat
        ON cat."Id" = sc."CategoryId"
      LEFT JOIN "StatGroups" sg
        ON sg."Id" = cat."GroupId"
      LEFT JOIN "StatMetrics" sm
        ON sm."Id" = scm."MetricId"
     WHERE m."MappingSetId" = v_mapping_set_id
       AND (
            scm."Id" IS NULL
         OR sc."Id" IS NULL
         OR cat."Id" IS NULL
         OR sg."Id" IS NULL
         OR sm."Id" IS NULL
         OR sg."Name" NOT IN ('Non-Supervision', 'Supervision', 'Location Level')
       );

    IF v_unusable_mapping_count <> 0 THEN
        RAISE EXCEPTION
            'MappingSetId % contains % mapping row(s) whose SCM/taxonomy is missing or uses an unsupported StatGroup.',
            v_mapping_set_id,
            v_unusable_mapping_count;
    END IF;

    ---------------------------------------------------------------------------
    -- Mirror target-safety validation.
    ---------------------------------------------------------------------------
    SELECT COUNT(*)
      INTO v_unsafe_target_count
      FROM etl."BiOracleStatMappings"
     WHERE "MappingSetId" = v_mapping_set_id
       AND (
            "TargetTable" NOT IN ('SHERIFF_SRVCES', 'SHERIFF_SRVCES_HOURS')
         OR "TargetColumn" IS NULL
         OR BTRIM("TargetColumn") = ''
         OR "TargetColumn" !~ '^[A-Z][A-Z0-9_]*$'
         OR "TargetColumn" IN
            (
                'CRT_LOC_ID',
                'MONTH',
                'SUPERVISOR_YN',
                'CREATE_DATE',
                'CREATED_BY',
                'UPDATE_DATE',
                'UPDATED_BY',
                'NIL_REPORT'
            )
       );

    IF v_unsafe_target_count <> 0 THEN
        RAISE EXCEPTION
            'MappingSetId % contains % unsafe Oracle target mapping(s).',
            v_mapping_set_id,
            v_unsafe_target_count;
    END IF;

    ---------------------------------------------------------------------------
    -- Require an isolated reporting month / CRT location.
    ---------------------------------------------------------------------------
    SELECT COUNT(*)
      INTO v_existing_count
      FROM "StatRecords" sr
      JOIN "SubCategoryMetrics" scm
        ON scm."Id" = sr."SubCategoryMetricId"
      JOIN "SubCategories" sc
        ON sc."Id" = scm."SubCategoryId"
      JOIN "StatCategories" cat
        ON cat."Id" = sc."CategoryId"
      JOIN "StatGroups" sg
        ON sg."Id" = cat."GroupId"
      JOIN "StatMetrics" sm
        ON sm."Id" = scm."MetricId"
      JOIN "Locations" l
        ON l."Id" = COALESCE(sr."PerformedAtLocationId", sr."LocationId")
      JOIN etl."BiOracleLocationMapping" lm
        ON lm."JustinLocationCode" = l."JustinLocationCode"
       AND lm."EffectiveDate" <= v_reporting_month
       AND (lm."ExpiryDate" IS NULL OR lm."ExpiryDate" >= v_reporting_month)
     WHERE sr."Status" = 'SignedOff'
       AND COALESCE(scm."IsArchived", FALSE) = FALSE
       AND COALESCE(cat."IsArchived", FALSE) = FALSE
       AND COALESCE(sc."IsArchived", FALSE) = FALSE
       AND sr."DateFrom" < (v_reporting_month + INTERVAL '1 month')
       AND sr."DateTo" >= v_reporting_month
       AND lm."CrtLocId" = v_crt_loc_id
       AND EXISTS
           (
               SELECT 1
                 FROM etl."BiOracleStatMappings" m
                WHERE m."MappingSetId" = v_mapping_set_id
                  AND m."SubCategoryMetricId" = sr."SubCategoryMetricId"
           );

    IF v_existing_count <> 0 THEN
        RAISE EXCEPTION
            'Found % existing eligible mapped StatRecord(s) for reporting month % / CRT_LOC_ID %. Use an isolated test month/location.',
            v_existing_count,
            v_reporting_month,
            v_crt_loc_id;
    END IF;

    ---------------------------------------------------------------------------
    -- Confirm >=7 assigned regular hours before OT records are inserted.
    ---------------------------------------------------------------------------
    SELECT
        COALESCE(
            SUM(
                CASE
                    WHEN LOWER(COALESCE(sm."UnitOfMeasure", '')) = 'hours'
                     AND COALESCE(sm."IsOvertime", FALSE) = FALSE
                    THEN (1000 + scm."Id")::numeric
                    ELSE 0
                END
            ),
            0
        ),
        COUNT(*) FILTER (WHERE COALESCE(sm."IsOvertime", FALSE))
      INTO v_regular_hours,
           v_ot_scm_count
      FROM
      (
          SELECT DISTINCT "SubCategoryMetricId"
            FROM etl."BiOracleStatMappings"
           WHERE "MappingSetId" = v_mapping_set_id
      ) m
      JOIN "SubCategoryMetrics" scm
        ON scm."Id" = m."SubCategoryMetricId"
      JOIN "SubCategories" sc
        ON sc."Id" = scm."SubCategoryId"
      JOIN "StatCategories" cat
        ON cat."Id" = sc."CategoryId"
      JOIN "StatMetrics" sm
        ON sm."Id" = scm."MetricId"
     WHERE COALESCE(scm."IsArchived", FALSE) = FALSE
       AND COALESCE(sc."IsArchived", FALSE) = FALSE
       AND COALESCE(cat."IsArchived", FALSE) = FALSE;

    IF v_ot_scm_count > 0 AND v_regular_hours < 7 THEN
        RAISE EXCEPTION
            'Fixture would create % OT SCM(s), but generated regular assigned hours total only %. Unified requires at least 7 hours.',
            v_ot_scm_count,
            v_regular_hours;
    END IF;

    ---------------------------------------------------------------------------
    -- Insert non-OT records first.
    ---------------------------------------------------------------------------
    INSERT INTO "StatRecords"
    (
        "DateFrom",
        "DateTo",
        "PeriodType",
        "LocationId",
        "SubCategoryMetricId",
        "Value",
        "Status",
        "Comment",
        "CreatedById",
        "CreatedOn",
        "UpdatedById",
        "UpdatedOn",
        "UserId",
        "SignedOffAt",
        "SignedOffByUserId",
        "PerformedAtLocationId"
    )
    SELECT
        v_reporting_month,
        v_reporting_month,
        'Daily',
        v_location_id,
        scm."Id",
        CASE
            WHEN LOWER(COALESCE(sm."UnitOfMeasure", '')) = 'hours'
                THEN (1000 + scm."Id")::numeric
            ELSE scm."Id"::numeric
        END,
        'SignedOff',
        v_test_run_key
            || '|MAPSET=' || v_mapping_set_id::text
            || '|SCM=' || scm."Id"::text,
        v_user_id,
        CURRENT_TIMESTAMP,
        v_user_id,
        CURRENT_TIMESTAMP,
        v_user_id,
        CURRENT_TIMESTAMP,
        v_user_id,
        v_performed_at_location_id
    FROM
    (
        SELECT DISTINCT "SubCategoryMetricId"
          FROM etl."BiOracleStatMappings"
         WHERE "MappingSetId" = v_mapping_set_id
    ) m
    JOIN "SubCategoryMetrics" scm
      ON scm."Id" = m."SubCategoryMetricId"
    JOIN "SubCategories" sc
      ON sc."Id" = scm."SubCategoryId"
    JOIN "StatCategories" cat
      ON cat."Id" = sc."CategoryId"
    JOIN "StatMetrics" sm
      ON sm."Id" = scm."MetricId"
    WHERE COALESCE(scm."IsArchived", FALSE) = FALSE
      AND COALESCE(sc."IsArchived", FALSE) = FALSE
      AND COALESCE(cat."IsArchived", FALSE) = FALSE
      AND COALESCE(sm."IsOvertime", FALSE) = FALSE
    ORDER BY scm."Id";

    GET DIAGNOSTICS v_inserted_non_ot = ROW_COUNT;

    ---------------------------------------------------------------------------
    -- Insert OT records second.
    ---------------------------------------------------------------------------
    INSERT INTO "StatRecords"
    (
        "DateFrom",
        "DateTo",
        "PeriodType",
        "LocationId",
        "SubCategoryMetricId",
        "Value",
        "Status",
        "Comment",
        "CreatedById",
        "CreatedOn",
        "UpdatedById",
        "UpdatedOn",
        "UserId",
        "SignedOffAt",
        "SignedOffByUserId",
        "PerformedAtLocationId"
    )
    SELECT
        v_reporting_month,
        v_reporting_month,
        'Daily',
        v_location_id,
        scm."Id",
        (2000 + scm."Id")::numeric,
        'SignedOff',
        v_test_run_key
            || '|MAPSET=' || v_mapping_set_id::text
            || '|SCM=' || scm."Id"::text,
        v_user_id,
        CURRENT_TIMESTAMP,
        v_user_id,
        CURRENT_TIMESTAMP,
        v_user_id,
        CURRENT_TIMESTAMP,
        v_user_id,
        v_performed_at_location_id
    FROM
    (
        SELECT DISTINCT "SubCategoryMetricId"
          FROM etl."BiOracleStatMappings"
         WHERE "MappingSetId" = v_mapping_set_id
    ) m
    JOIN "SubCategoryMetrics" scm
      ON scm."Id" = m."SubCategoryMetricId"
    JOIN "SubCategories" sc
      ON sc."Id" = scm."SubCategoryId"
    JOIN "StatCategories" cat
      ON cat."Id" = sc."CategoryId"
    JOIN "StatMetrics" sm
      ON sm."Id" = scm."MetricId"
    WHERE COALESCE(scm."IsArchived", FALSE) = FALSE
      AND COALESCE(sc."IsArchived", FALSE) = FALSE
      AND COALESCE(cat."IsArchived", FALSE) = FALSE
      AND COALESCE(sm."IsOvertime", FALSE) = TRUE
    ORDER BY scm."Id";

    GET DIAGNOSTICS v_inserted_ot = ROW_COUNT;

    RAISE NOTICE 'BCSS mapping fixture created successfully.';
    RAISE NOTICE 'TestRunKey: %', v_test_run_key;
    RAISE NOTICE 'ReportingMonth: %', v_reporting_month;
    RAISE NOTICE 'LocationId: %', v_location_id;
    RAISE NOTICE 'PerformedAtLocationId: %', v_performed_at_location_id;
    RAISE NOTICE 'CRT_LOC_ID: %', v_crt_loc_id;
    RAISE NOTICE 'MappingSetId: %', v_mapping_set_id;
    RAISE NOTICE 'Mapping rows covered: %', v_mapping_row_count;
    RAISE NOTICE 'Distinct mapped SCMs inserted: %', v_distinct_scm_count;
    RAISE NOTICE 'Non-OT records inserted: %', v_inserted_non_ot;
    RAISE NOTICE 'OT records inserted: %', v_inserted_ot;
    RAISE NOTICE 'Total records inserted: %', v_inserted_non_ot + v_inserted_ot;
END
$$;

COMMIT;
