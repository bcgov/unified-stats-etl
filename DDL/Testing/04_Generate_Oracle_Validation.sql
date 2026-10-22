--change date (reporting month) and location id as necessary to match generated data.
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'ADMIN_HRS' as target_column,
       3379.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3379.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."ADMIN_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_HRS_L1' as target_column,
       3225.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3225.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_HRS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_HRS_L2' as target_column,
       3229.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3229.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_HRS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_HRS_L3' as target_column,
       3233.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3233.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_HRS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_TRIPS_L1' as target_column,
       367.0000 as expected_value,
       actual_value,
       case
          when actual_value = 367.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_TRIPS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_TRIPS_L2' as target_column,
       368.0000 as expected_value,
       actual_value,
       case
          when actual_value = 368.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_TRIPS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_TRIPS_L3' as target_column,
       369.0000 as expected_value,
       actual_value,
       case
          when actual_value = 369.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_TRIPS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'BRDI_HRS' as target_column,
       3421.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3421.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."BRDI_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CA_HSM_HRS' as target_column,
       3015.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3015.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CA_REG_HRS' as target_column,
       3011.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3011.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_REG_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CCRT_HRS' as target_column,
       3139.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3139.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CCRT_KMS' as target_column,
       366.0000 as expected_value,
       actual_value,
       case
          when actual_value = 366.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_KMS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CPIC_JA_HRS' as target_column,
       3383.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3383.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JA_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CPIC_JUSTIN_HRS' as target_column,
       3387.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3387.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JUSTIN_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_CRTORD_CONC' as target_column,
       442.0000 as expected_value,
       actual_value,
       case
          when actual_value = 442.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_CONC"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_CRTORD_HRS' as target_column,
       3193.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3193.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_CRTORD_RCVD' as target_column,
       441.0000 as expected_value,
       actual_value,
       case
          when actual_value = 441.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_RCVD"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_DOCS_HRS' as target_column,
       3201.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3201.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_DOCS_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_OTHR_HRS' as target_column,
       3209.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3209.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_OTHR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_WARR_CONC' as target_column,
       448.0000 as expected_value,
       actual_value,
       case
          when actual_value = 448.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_CONC"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_WARR_HRS' as target_column,
       3217.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3217.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_WARR_RCVD' as target_column,
       447.0000 as expected_value,
       actual_value,
       case
          when actual_value = 447.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_RCVD"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRN_ADMN_HRS' as target_column,
       1072.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1072.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRN_ADMN_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRN_JRS_SMND' as target_column,
       398.0000 as expected_value,
       actual_value,
       case
          when actual_value = 398.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRN_JRS_SMND"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRN_PNLS' as target_column,
       399.0000 as expected_value,
       actual_value,
       case
          when actual_value = 399.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRN_PNLS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRNR_HSM_HRS' as target_column,
       3007.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3007.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRNR_SHRF_HRS' as target_column,
       3003.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3003.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_CRTORD_CONC' as target_column,
       434.0000 as expected_value,
       actual_value,
       case
          when actual_value = 434.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_CONC"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_CRTORD_HRS' as target_column,
       3161.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3161.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_CRTORD_RCVD' as target_column,
       433.0000 as expected_value,
       actual_value,
       case
          when actual_value = 433.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_RCVD"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_DOCS_HRS' as target_column,
       3169.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3169.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_DOCS_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_OTHR_HRS' as target_column,
       3177.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3177.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_OTHR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_WARR_CONC' as target_column,
       440.0000 as expected_value,
       actual_value,
       case
          when actual_value = 440.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_CONC"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_WARR_HRS' as target_column,
       3185.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3185.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_WARR_RCVD' as target_column,
       439.0000 as expected_value,
       actual_value,
       case
          when actual_value = 439.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_RCVD"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'DNA_HRS' as target_column,
       3399.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3399.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'DNA_SAMPLES_CNT' as target_column,
       201.0000 as expected_value,
       actual_value,
       case
          when actual_value = 201.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_SAMPLES_CNT"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_HRS_L1' as target_column,
       3249.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3249.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_HRS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_HRS_L2' as target_column,
       3253.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3253.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_HRS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_HRS_L3' as target_column,
       3257.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3257.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_HRS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_KMS_L1' as target_column,
       375.0000 as expected_value,
       actual_value,
       case
          when actual_value = 375.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_KMS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_KMS_L2' as target_column,
       376.0000 as expected_value,
       actual_value,
       case
          when actual_value = 376.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_KMS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_KMS_L3' as target_column,
       377.0000 as expected_value,
       actual_value,
       case
          when actual_value = 377.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_KMS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_TRIPS_L1' as target_column,
       371.0000 as expected_value,
       actual_value,
       case
          when actual_value = 371.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_TRIPS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_TRIPS_L2' as target_column,
       372.0000 as expected_value,
       actual_value,
       case
          when actual_value = 372.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_TRIPS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_TRIPS_L3' as target_column,
       373.0000 as expected_value,
       actual_value,
       case
          when actual_value = 373.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_TRIPS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_KM_TRAVL' as target_column,
       1128.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1128.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_KM_TRAVL"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'HLD_CELL_HRS' as target_column,
       1407.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1407.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_CELL_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'HLD_SHRF_HRS' as target_column,
       3809.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3809.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'INO_HRS' as target_column,
       3413.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3413.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."INO_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'JRY_SHRF_HRS' as target_column,
       1075.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1075.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."JRY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'JURORS_PAID' as target_column,
       401.0000 as expected_value,
       actual_value,
       case
          when actual_value = 401.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."JURORS_PAID"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'JURORS_PAID_SUM' as target_column,
       403.0000 as expected_value,
       actual_value,
       case
          when actual_value = 403.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."JURORS_PAID_SUM"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'JURORS_PANELS_CNT' as target_column,
       402.0000 as expected_value,
       actual_value,
       case
          when actual_value = 402.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."JURORS_PANELS_CNT"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'JURORS_SUMD' as target_column,
       400.0000 as expected_value,
       actual_value,
       case
          when actual_value = 400.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."JURORS_SUMD"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'OTHR_HSM_HRS' as target_column,
       3023.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3023.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'OTHR_SHRF_HRS' as target_column,
       3019.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3019.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRA_HSM_HRS' as target_column,
       3031.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3031.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRA_SHRF_HRS' as target_column,
       3027.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3027.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRY_HSM_HRS' as target_column,
       3055.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3055.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRY_SHRF_HRS' as target_column,
       3051.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3051.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVF_HSM_HRS' as target_column,
       3039.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3039.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVF_SHRF_HRS' as target_column,
       3035.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3035.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVS_HSM_HRS' as target_column,
       3047.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3047.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVS_SHRF_HRS' as target_column,
       3043.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3043.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PIO_IO_HRS' as target_column,
       3409.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3409.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PIO_IO_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PTO_HRS' as target_column,
       3859.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3859.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PTO_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'RVR_HSM_HRS' as target_column,
       3063.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3063.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'RVR_SHRF_HRS' as target_column,
       3059.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3059.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_DELIB_HRS' as target_column,
       3107.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3107.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_DELIB_HSM_HRS' as target_column,
       3111.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3111.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_JY_HSM_HRS' as target_column,
       3103.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3103.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_JY_SHRF_HRS' as target_column,
       3099.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3099.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_NJ_HSM_HRS' as target_column,
       3119.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3119.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_NJ_SHRF_HRS' as target_column,
       3115.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3115.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_DELIB_HRS' as target_column,
       3083.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3083.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_DELIB_HSM_HRS' as target_column,
       3087.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3087.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCVF_HSM_HRS' as target_column,
       3127.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3127.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCVF_SHRF_HRS' as target_column,
       3123.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3123.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_JY_HSM_HRS' as target_column,
       3079.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3079.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_JY_SHRF_HRS' as target_column,
       3075.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3075.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_NJ_HSM_HRS' as target_column,
       3095.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3095.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_NJ_SHRF_HRS' as target_column,
       3091.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3091.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SEDEV_HRS' as target_column,
       1212.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1212.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SEDEV_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SG_HSM_HRS' as target_column,
       3071.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3071.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SG_STAFF_HRS' as target_column,
       3067.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3067.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_STAFF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SIR_HRS' as target_column,
       3395.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3395.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SIR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VC_HSM_HRS' as target_column,
       3135.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3135.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VC_STAFF_HRS' as target_column,
       3131.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3131.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_STAFF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VEH_MGNT_HRS' as target_column,
       3405.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3405.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VEH_MGNT_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'ADMIN_HRS' as target_column,
       3685.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3685.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."ADMIN_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_HRS_L1' as target_column,
       3633.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3633.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_HRS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_HRS_L2' as target_column,
       3637.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3637.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_HRS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_HRS_L3' as target_column,
       3641.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3641.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_HRS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'BRDI_HRS' as target_column,
       3727.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3727.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."BRDI_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CA_HSM_HRS' as target_column,
       3439.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3439.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CA_REG_HRS' as target_column,
       3435.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3435.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_REG_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CCRT_HRS' as target_column,
       3563.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3563.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CPIC_JA_HRS' as target_column,
       3689.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3689.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JA_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CPIC_JUSTIN_HRS' as target_column,
       3693.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3693.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JUSTIN_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_CRTORD_HRS' as target_column,
       3601.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3601.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_DOCS_HRS' as target_column,
       3609.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3609.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_DOCS_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_OTHR_HRS' as target_column,
       3617.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3617.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_OTHR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_WARR_HRS' as target_column,
       3625.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3625.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRN_ADMN_HRS' as target_column,
       1428.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1428.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRN_ADMN_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRNR_HSM_HRS' as target_column,
       3431.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3431.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRNR_SHRF_HRS' as target_column,
       3427.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3427.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_CRTORD_HRS' as target_column,
       3569.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3569.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_DOCS_HRS' as target_column,
       3577.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3577.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_DOCS_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_OTHR_HRS' as target_column,
       3585.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3585.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_OTHR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_WARR_HRS' as target_column,
       3593.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3593.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'DNA_HRS' as target_column,
       3705.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3705.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'DNA_SAMPLES_CNT' as target_column,
       354.0000 as expected_value,
       actual_value,
       case
          when actual_value = 354.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_SAMPLES_CNT"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_HRS_L1' as target_column,
       3651.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3651.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_HRS_L1"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_HRS_L2' as target_column,
       3655.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3655.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_HRS_L2"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_HRS_L3' as target_column,
       3659.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3659.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_HRS_L3"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'HLD_SHRF_HRS' as target_column,
       3746.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3746.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'INO_HRS' as target_column,
       3719.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3719.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."INO_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'JRY_SHRF_HRS' as target_column,
       1341.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1341.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."JRY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'OTHR_HSM_HRS' as target_column,
       3447.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3447.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'OTHR_SHRF_HRS' as target_column,
       3443.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3443.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRA_HSM_HRS' as target_column,
       3455.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3455.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRA_SHRF_HRS' as target_column,
       3451.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3451.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRY_HSM_HRS' as target_column,
       3479.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3479.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRY_SHRF_HRS' as target_column,
       3475.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3475.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVF_HSM_HRS' as target_column,
       3463.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3463.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVF_SHRF_HRS' as target_column,
       3459.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3459.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVS_HSM_HRS' as target_column,
       3471.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3471.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVS_SHRF_HRS' as target_column,
       3467.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3467.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PIO_IO_HRS' as target_column,
       3715.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3715.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PIO_IO_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PTO_HRS' as target_column,
       3863.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3863.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PTO_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'RVR_HSM_HRS' as target_column,
       3487.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3487.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'RVR_SHRF_HRS' as target_column,
       3483.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3483.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_DELIB_HRS' as target_column,
       3531.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3531.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_DELIB_HSM_HRS' as target_column,
       3535.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3535.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_JY_HSM_HRS' as target_column,
       3527.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3527.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_JY_SHRF_HRS' as target_column,
       3523.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3523.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_NJ_HSM_HRS' as target_column,
       3543.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3543.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_NJ_SHRF_HRS' as target_column,
       3539.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3539.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_DELIB_HRS' as target_column,
       3507.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3507.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_DELIB_HSM_HRS' as target_column,
       3511.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3511.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCVF_HSM_HRS' as target_column,
       3551.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3551.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCVF_SHRF_HRS' as target_column,
       3547.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3547.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_JY_HSM_HRS' as target_column,
       3503.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3503.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_JY_SHRF_HRS' as target_column,
       3499.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3499.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_NJ_HSM_HRS' as target_column,
       3519.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3519.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_NJ_SHRF_HRS' as target_column,
       3515.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3515.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_SHRF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SEDEV_HRS' as target_column,
       1365.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1365.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SEDEV_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SG_HSM_HRS' as target_column,
       3495.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3495.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SG_STAFF_HRS' as target_column,
       3491.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3491.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_STAFF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SIR_HRS' as target_column,
       3701.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3701.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SIR_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VC_HSM_HRS' as target_column,
       3559.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3559.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_HSM_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VC_STAFF_HRS' as target_column,
       3555.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3555.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_STAFF_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VEH_MGNT_HRS' as target_column,
       3711.0000 as expected_value,
       actual_value,
       case
          when actual_value = 3711.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VEH_MGNT_HRS"
        from courts."SHERIFF_SRVCES" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'ADMIN_OT_HRS' as target_column,
       2190.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2190.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."ADMIN_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'ADMIN_REG_HRS' as target_column,
       1189.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1189.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."ADMIN_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_OT_HRS_L1' as target_column,
       2113.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2113.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_OT_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_OT_HRS_L2' as target_column,
       2115.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2115.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_OT_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_OT_HRS_L3' as target_column,
       2117.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2117.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_OT_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_REG_HRS_L1' as target_column,
       1112.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1112.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_REG_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_REG_HRS_L2' as target_column,
       1114.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1114.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_REG_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'AIR_ESC_REG_HRS_L3' as target_column,
       1116.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1116.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_REG_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'BRDI_OT_HRS' as target_column,
       2211.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2211.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."BRDI_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'BRDI_REG_HRS' as target_column,
       1210.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1210.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."BRDI_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CA_HSM_OT_HRS' as target_column,
       2008.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2008.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CA_HSM_REG_HRS' as target_column,
       1007.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1007.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CA_REG_OT_HRS' as target_column,
       2006.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2006.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_REG_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CA_REG_REG_HRS' as target_column,
       1005.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1005.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_REG_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CCRT_OT_HRS' as target_column,
       2070.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2070.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CCRT_REG_HRS' as target_column,
       1069.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1069.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CPIC_JA_OT_HRS' as target_column,
       2192.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2192.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JA_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CPIC_JA_REG_HRS' as target_column,
       1191.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1191.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JA_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CPIC_JUSTIN_OT_HRS' as target_column,
       2194.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2194.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JUSTIN_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CPIC_JUSTIN_REG_HRS' as target_column,
       1193.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1193.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JUSTIN_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_CRTORD_OT_HRS' as target_column,
       2097.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2097.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_CRTORD_REG_HRS' as target_column,
       1096.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1096.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_DOCS_OT_HRS' as target_column,
       2101.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2101.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_DOCS_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_DOCS_REG_HRS' as target_column,
       1100.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1100.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_DOCS_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_OTHR_OT_HRS' as target_column,
       2105.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2105.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_OTHR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_OTHR_REG_HRS' as target_column,
       1104.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1104.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_OTHR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_WARR_OT_HRS' as target_column,
       2109.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2109.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRIM_WARR_REG_HRS' as target_column,
       1108.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1108.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRNR_HSM_OT_HRS' as target_column,
       2004.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2004.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRNR_HSM_REG_HRS' as target_column,
       1003.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1003.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRNR_SHRF_OT_HRS' as target_column,
       2002.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2002.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CRNR_SHRF_REG_HRS' as target_column,
       1001.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1001.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_CRTORD_OT_HRS' as target_column,
       2081.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2081.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_CRTORD_REG_HRS' as target_column,
       1080.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1080.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_DOCS_OT_HRS' as target_column,
       2085.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2085.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_DOCS_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_DOCS_REG_HRS' as target_column,
       1084.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1084.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_DOCS_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_OTHR_OT_HRS' as target_column,
       2089.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2089.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_OTHR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_OTHR_REG_HRS' as target_column,
       1088.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1088.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_OTHR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_WARR_OT_HRS' as target_column,
       2093.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2093.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'CVF_WARR_REG_HRS' as target_column,
       1092.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1092.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'DNA_OT_HRS' as target_column,
       2200.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2200.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'DNA_REG_HRS' as target_column,
       1199.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1199.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_OT_HRS_L1' as target_column,
       2125.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2125.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_OT_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_OT_HRS_L2' as target_column,
       2127.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2127.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_OT_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_OT_HRS_L3' as target_column,
       2129.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2129.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_OT_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_REG_HRS_L1' as target_column,
       1124.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1124.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_REG_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_REG_HRS_L2' as target_column,
       1126.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1126.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_REG_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'GRD_ESC_REG_HRS_L3' as target_column,
       1128.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1128.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_REG_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'HLD_SHRF_OT_HRS' as target_column,
       2405.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2405.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'HLD_SHRF_REG_HRS' as target_column,
       1404.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1404.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'INO_OT_HRS' as target_column,
       2207.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2207.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."INO_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'INO_REG_HRS' as target_column,
       1206.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1206.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."INO_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'OTHR_HSM_OT_HRS' as target_column,
       2012.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2012.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'OTHR_HSM_REG_HRS' as target_column,
       1011.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1011.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'OTHR_SHRF_OT_HRS' as target_column,
       2010.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2010.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'OTHR_SHRF_REG_HRS' as target_column,
       1009.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1009.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRA_HSM_OT_HRS' as target_column,
       2016.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2016.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRA_HSM_REG_HRS' as target_column,
       1015.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1015.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRA_SHRF_OT_HRS' as target_column,
       2014.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2014.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRA_SHRF_REG_HRS' as target_column,
       1013.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1013.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRY_HSM_OT_HRS' as target_column,
       2028.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2028.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRY_HSM_REG_HRS' as target_column,
       1027.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1027.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRY_SHRF_OT_HRS' as target_column,
       2026.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2026.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCRY_SHRF_REG_HRS' as target_column,
       1025.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1025.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVF_HSM_OT_HRS' as target_column,
       2020.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2020.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVF_HSM_REG_HRS' as target_column,
       1019.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1019.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVF_SHRF_OT_HRS' as target_column,
       2018.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2018.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVF_SHRF_REG_HRS' as target_column,
       1017.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1017.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVS_HSM_OT_HRS' as target_column,
       2024.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2024.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVS_HSM_REG_HRS' as target_column,
       1023.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1023.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVS_SHRF_OT_HRS' as target_column,
       2022.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2022.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PCVS_SHRF_REG_HRS' as target_column,
       1021.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1021.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PIO_IO_OT_HRS' as target_column,
       2205.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2205.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PIO_IO_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PIO_IO_REG_HRS' as target_column,
       1204.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1204.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PIO_IO_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PTO_OT_HRS' as target_column,
       2430.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2430.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PTO_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'PTO_REG_HRS' as target_column,
       1429.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1429.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PTO_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'RVR_HSM_OT_HRS' as target_column,
       2032.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2032.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'RVR_HSM_REG_HRS' as target_column,
       1031.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1031.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'RVR_SHRF_OT_HRS' as target_column,
       2030.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2030.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'RVR_SHRF_REG_HRS' as target_column,
       1029.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1029.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_DELIB_HSM_OT_HRS' as target_column,
       2056.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2056.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_DELIB_HSM_REG_HRS' as target_column,
       1055.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1055.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_DELIB_OT_HRS' as target_column,
       2054.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2054.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_DELIB_REG_HRS' as target_column,
       1053.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1053.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_JY_HSM_OT_HRS' as target_column,
       2052.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2052.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_JY_HSM_REG_HRS' as target_column,
       1051.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1051.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_JY_SHRF_OT_HRS' as target_column,
       2050.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2050.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_JY_SHRF_REG_HRS' as target_column,
       1049.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1049.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_NJ_HSM_OT_HRS' as target_column,
       2060.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2060.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_NJ_HSM_REG_HRS' as target_column,
       1059.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1059.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_NJ_SHRF_OT_HRS' as target_column,
       2058.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2058.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCR_NJ_SHRF_REG_HRS' as target_column,
       1057.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1057.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_DELIB_HSM_OT_HRS' as target_column,
       2044.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2044.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_DELIB_HSM_REG_HRS' as target_column,
       1043.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1043.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_DELIB_OT_HRS' as target_column,
       2042.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2042.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_DELIB_REG_HRS' as target_column,
       1041.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1041.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCVF_HSM_OT_HRS' as target_column,
       2064.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2064.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCVF_HSM_REG_HRS' as target_column,
       1063.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1063.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCVF_SHRF_OT_HRS' as target_column,
       2062.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2062.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCVF_SHRF_REG_HRS' as target_column,
       1061.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1061.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_JY_HSM_OT_HRS' as target_column,
       2040.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2040.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_JY_HSM_REG_HRS' as target_column,
       1039.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1039.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_JY_SHRF_OT_HRS' as target_column,
       2038.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2038.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_JY_SHRF_REG_HRS' as target_column,
       1037.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1037.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_NJ_HSM_OT_HRS' as target_column,
       2048.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2048.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_NJ_HSM_REG_HRS' as target_column,
       1047.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1047.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_NJ_SHRF_OT_HRS' as target_column,
       2046.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2046.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SCV_NJ_SHRF_REG_HRS' as target_column,
       1045.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1045.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SG_HSM_OT_HRS' as target_column,
       2036.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2036.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SG_HSM_REG_HRS' as target_column,
       1035.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1035.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SG_STAFF_OT_HRS' as target_column,
       2034.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2034.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_STAFF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SG_STAFF_REG_HRS' as target_column,
       1033.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1033.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_STAFF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SIR_OT_HRS' as target_column,
       2198.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2198.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SIR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'SIR_REG_HRS' as target_column,
       1197.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1197.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SIR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VC_HSM_OT_HRS' as target_column,
       2068.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2068.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VC_HSM_REG_HRS' as target_column,
       1067.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1067.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VC_STAFF_OT_HRS' as target_column,
       2066.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2066.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_STAFF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VC_STAFF_REG_HRS' as target_column,
       1065.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1065.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_STAFF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VEH_MGNT_OT_HRS' as target_column,
       2203.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2203.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VEH_MGNT_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'N' as supervisor_yn,
       'VEH_MGNT_REG_HRS' as target_column,
       1202.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1202.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VEH_MGNT_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'N'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'ADMIN_OT_HRS' as target_column,
       2343.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2343.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."ADMIN_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'ADMIN_REG_HRS' as target_column,
       1342.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1342.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."ADMIN_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_OT_HRS_L1' as target_column,
       2317.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2317.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_OT_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_OT_HRS_L2' as target_column,
       2319.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2319.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_OT_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_OT_HRS_L3' as target_column,
       2321.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2321.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_OT_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_REG_HRS_L1' as target_column,
       1316.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1316.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_REG_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_REG_HRS_L2' as target_column,
       1318.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1318.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_REG_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'AIR_ESC_REG_HRS_L3' as target_column,
       1320.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1320.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."AIR_ESC_REG_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'BRDI_OT_HRS' as target_column,
       2364.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2364.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."BRDI_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'BRDI_REG_HRS' as target_column,
       1363.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1363.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."BRDI_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CA_HSM_OT_HRS' as target_column,
       2220.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2220.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CA_HSM_REG_HRS' as target_column,
       1219.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1219.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CA_REG_OT_HRS' as target_column,
       2218.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2218.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_REG_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CA_REG_REG_HRS' as target_column,
       1217.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1217.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CA_REG_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CCRT_OT_HRS' as target_column,
       2282.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2282.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CCRT_REG_HRS' as target_column,
       1281.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1281.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CCRT_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CPIC_JA_OT_HRS' as target_column,
       2345.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2345.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JA_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CPIC_JA_REG_HRS' as target_column,
       1344.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1344.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JA_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CPIC_JUSTIN_OT_HRS' as target_column,
       2347.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2347.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JUSTIN_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CPIC_JUSTIN_REG_HRS' as target_column,
       1346.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1346.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CPIC_JUSTIN_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_CRTORD_OT_HRS' as target_column,
       2301.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2301.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_CRTORD_REG_HRS' as target_column,
       1300.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1300.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_CRTORD_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_DOCS_OT_HRS' as target_column,
       2305.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2305.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_DOCS_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_DOCS_REG_HRS' as target_column,
       1304.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1304.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_DOCS_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_OTHR_OT_HRS' as target_column,
       2309.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2309.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_OTHR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_OTHR_REG_HRS' as target_column,
       1308.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1308.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_OTHR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_WARR_OT_HRS' as target_column,
       2313.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2313.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRIM_WARR_REG_HRS' as target_column,
       1312.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1312.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRIM_WARR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRNR_HSM_OT_HRS' as target_column,
       2216.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2216.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRNR_HSM_REG_HRS' as target_column,
       1215.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1215.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRNR_SHRF_OT_HRS' as target_column,
       2214.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2214.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CRNR_SHRF_REG_HRS' as target_column,
       1213.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1213.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CRNR_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_CRTORD_OT_HRS' as target_column,
       2285.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2285.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_CRTORD_REG_HRS' as target_column,
       1284.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1284.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_CRTORD_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_DOCS_OT_HRS' as target_column,
       2289.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2289.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_DOCS_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_DOCS_REG_HRS' as target_column,
       1288.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1288.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_DOCS_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_OTHR_OT_HRS' as target_column,
       2293.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2293.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_OTHR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_OTHR_REG_HRS' as target_column,
       1292.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1292.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_OTHR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_WARR_OT_HRS' as target_column,
       2297.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2297.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'CVF_WARR_REG_HRS' as target_column,
       1296.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1296.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."CVF_WARR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'DNA_OT_HRS' as target_column,
       2353.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2353.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'DNA_REG_HRS' as target_column,
       1352.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1352.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."DNA_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_OT_HRS_L1' as target_column,
       2326.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2326.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_OT_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_OT_HRS_L2' as target_column,
       2328.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2328.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_OT_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_OT_HRS_L3' as target_column,
       2330.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2330.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_OT_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_REG_HRS_L1' as target_column,
       1325.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1325.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_REG_HRS_L1"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_REG_HRS_L2' as target_column,
       1327.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1327.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_REG_HRS_L2"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'GRD_ESC_REG_HRS_L3' as target_column,
       1329.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1329.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."GRD_ESC_REG_HRS_L3"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'HLD_SHRF_OT_HRS' as target_column,
       2340.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2340.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'HLD_SHRF_REG_HRS' as target_column,
       1406.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1406.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."HLD_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'INO_OT_HRS' as target_column,
       2360.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2360.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."INO_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'INO_REG_HRS' as target_column,
       1359.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1359.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."INO_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'OTHR_HSM_OT_HRS' as target_column,
       2224.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2224.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'OTHR_HSM_REG_HRS' as target_column,
       1223.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1223.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'OTHR_SHRF_OT_HRS' as target_column,
       2222.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2222.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'OTHR_SHRF_REG_HRS' as target_column,
       1221.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1221.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."OTHR_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRA_HSM_OT_HRS' as target_column,
       2228.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2228.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRA_HSM_REG_HRS' as target_column,
       1227.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1227.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRA_SHRF_OT_HRS' as target_column,
       2226.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2226.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRA_SHRF_REG_HRS' as target_column,
       1225.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1225.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRA_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRY_HSM_OT_HRS' as target_column,
       2240.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2240.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRY_HSM_REG_HRS' as target_column,
       1239.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1239.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRY_SHRF_OT_HRS' as target_column,
       2238.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2238.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCRY_SHRF_REG_HRS' as target_column,
       1237.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1237.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCRY_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVF_HSM_OT_HRS' as target_column,
       2232.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2232.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVF_HSM_REG_HRS' as target_column,
       1231.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1231.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVF_SHRF_OT_HRS' as target_column,
       2230.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2230.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVF_SHRF_REG_HRS' as target_column,
       1229.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1229.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVF_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVS_HSM_OT_HRS' as target_column,
       2236.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2236.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVS_HSM_REG_HRS' as target_column,
       1235.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1235.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVS_SHRF_OT_HRS' as target_column,
       2234.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2234.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PCVS_SHRF_REG_HRS' as target_column,
       1233.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1233.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PCVS_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PIO_IO_OT_HRS' as target_column,
       2358.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2358.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PIO_IO_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PIO_IO_REG_HRS' as target_column,
       1357.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1357.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PIO_IO_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PTO_OT_HRS' as target_column,
       2432.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2432.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PTO_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'PTO_REG_HRS' as target_column,
       1431.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1431.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."PTO_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'RVR_HSM_OT_HRS' as target_column,
       2244.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2244.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'RVR_HSM_REG_HRS' as target_column,
       1243.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1243.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'RVR_SHRF_OT_HRS' as target_column,
       2242.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2242.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'RVR_SHRF_REG_HRS' as target_column,
       1241.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1241.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."RVR_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_DELIB_HSM_OT_HRS' as target_column,
       2268.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2268.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_DELIB_HSM_REG_HRS' as target_column,
       1267.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1267.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_DELIB_OT_HRS' as target_column,
       2266.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2266.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_DELIB_REG_HRS' as target_column,
       1265.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1265.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_DELIB_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_JY_HSM_OT_HRS' as target_column,
       2264.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2264.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_JY_HSM_REG_HRS' as target_column,
       1263.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1263.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_JY_SHRF_OT_HRS' as target_column,
       2262.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2262.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_JY_SHRF_REG_HRS' as target_column,
       1261.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1261.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_JY_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_NJ_HSM_OT_HRS' as target_column,
       2272.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2272.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_NJ_HSM_REG_HRS' as target_column,
       1271.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1271.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_NJ_SHRF_OT_HRS' as target_column,
       2270.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2270.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCR_NJ_SHRF_REG_HRS' as target_column,
       1269.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1269.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCR_NJ_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_DELIB_HSM_OT_HRS' as target_column,
       2256.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2256.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_DELIB_HSM_REG_HRS' as target_column,
       1255.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1255.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_DELIB_OT_HRS' as target_column,
       2254.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2254.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_DELIB_REG_HRS' as target_column,
       1253.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1253.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_DELIB_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCVF_HSM_OT_HRS' as target_column,
       2276.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2276.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCVF_HSM_REG_HRS' as target_column,
       1275.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1275.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCVF_SHRF_OT_HRS' as target_column,
       2274.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2274.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCVF_SHRF_REG_HRS' as target_column,
       1273.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1273.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCVF_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_JY_HSM_OT_HRS' as target_column,
       2252.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2252.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_JY_HSM_REG_HRS' as target_column,
       1251.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1251.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_JY_SHRF_OT_HRS' as target_column,
       2250.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2250.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_JY_SHRF_REG_HRS' as target_column,
       1249.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1249.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_JY_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_NJ_HSM_OT_HRS' as target_column,
       2260.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2260.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_NJ_HSM_REG_HRS' as target_column,
       1259.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1259.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_NJ_SHRF_OT_HRS' as target_column,
       2258.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2258.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_SHRF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SCV_NJ_SHRF_REG_HRS' as target_column,
       1257.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1257.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SCV_NJ_SHRF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SG_HSM_OT_HRS' as target_column,
       2248.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2248.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SG_HSM_REG_HRS' as target_column,
       1247.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1247.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SG_STAFF_OT_HRS' as target_column,
       2246.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2246.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_STAFF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SG_STAFF_REG_HRS' as target_column,
       1245.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1245.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SG_STAFF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SIR_OT_HRS' as target_column,
       2351.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2351.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SIR_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'SIR_REG_HRS' as target_column,
       1350.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1350.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."SIR_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VC_HSM_OT_HRS' as target_column,
       2280.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2280.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_HSM_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VC_HSM_REG_HRS' as target_column,
       1279.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1279.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_HSM_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VC_STAFF_OT_HRS' as target_column,
       2278.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2278.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_STAFF_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VC_STAFF_REG_HRS' as target_column,
       1277.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1277.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VC_STAFF_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VEH_MGNT_OT_HRS' as target_column,
       2356.0000 as expected_value,
       actual_value,
       case
          when actual_value = 2356.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VEH_MGNT_OT_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
union all
select 'SHERIFF_SRVCES_HOURS' as target_table,
       date '2026-09-01' as reporting_month,
       488 as crt_loc_id,
       'Y' as supervisor_yn,
       'VEH_MGNT_REG_HRS' as target_column,
       1355.0000 as expected_value,
       actual_value,
       case
          when actual_value = 1355.0000 then
             'PASS'
          else
             'FAIL'
       end as result
  from (
   select (
      select t."VEH_MGNT_REG_HRS"
        from courts."SHERIFF_SRVCES_HOURS" t
       where t.month = date '2026-09-01'
         and t.crt_loc_id = 488
         and t.supervisor_yn = 'Y'
         and t.created_by = 'LEGACY_STATS_PSQL_TO_ORACLE'
   ) as actual_value
     from dual
)
 order by target_table,
          supervisor_yn,
          target_column;