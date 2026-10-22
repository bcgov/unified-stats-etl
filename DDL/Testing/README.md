# BCSS Oracle ETL Mapping Test Suite

This suite creates and validates a deterministic end-to-end mapping fixture for the BCSS
Unified -> PostgreSQL staging -> Oracle ETL.

## Files

1. `01_Create_BCSS_ETL_Test_Data.sql`
   - Inserts exactly one SignedOff `StatRecord` for every distinct mapped
     `SubCategoryMetricId` in the mapping set applicable to the requested reporting month.
   - Resolves `CRT_LOC_ID` through the normal location crosswalk.
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
   - Limits comparison to the fixture reporting month / `CRT_LOC_ID`.

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
4. Edit and run `03_Validate_PostgreSQL_Stage.sql`.
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

## Scope

This suite validates all configured mappings, aggregation, N/Y routing, Location Level -> N
behaviour, mapping fan-out, PostgreSQL staging, and final Oracle values.

Keep the separate behavioural tests for negative-hour suppression, stale-row removal,
rollback, invalid mappings, cross-month validation, and partial Oracle-stage transfer.
