CREATE OR REPLACE PACKAGE BODY COURTS."CSS_BCSS_IMPORT_PKG" as

-- GLOBAL PACKAGE BODY VARIABLES
--

-- LOCAL FUNCTIONS/PROCEDURES in Package Body Only
--

procedure prWriteLinetoLog (vErrorMsg IN VARCHAR2) is

begin
   insert into bcss_import_log values (vErrorMsg, sysdate);
   commit;
end prWriteLinetoLog;

function fnRowAlreadyExistsMaster (nMonth IN DATE, nCrtLocID IN NUMBER, nSupervisorYN IN VARCHAR2) RETURN BOOLEAN is
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
--  Returns Yes or No so we know if need to Insert or Update
--
--  Ver--  Date------  Author----       History------------------------------
--  00001  2014-01-12  Sharolyn Hurley   Initial version
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

   CURSOR cSheriffSrvcesRowExists IS
      SELECT 'Y'
        FROM sheriff_srvces
       WHERE month = nMonth
         AND crt_loc_id = nCrtLocID
         AND supervisor_yn = nSupervisorYN;

   vSheriffSrvcesRowExists VARCHAR2(1);

begin
   OPEN cSheriffSrvcesRowExists;
   FETCH cSheriffSrvcesRowExists INTO vSheriffSrvcesRowExists;
   CLOSE cSheriffSrvcesRowExists;

   if vSheriffSrvcesRowExists is null then
      RETURN FALSE;
   end if;

   RETURN TRUE;
exception
   when no_data_found then
      RETURN FALSE;
   when others then
      prWriteLinetoLog('Error checking for existing row '||SQLCODE||SQLERRM);
      RETURN FALSE;
end fnRowAlreadyExistsMaster;

function fnRowAlreadyExistsHours (nMonth IN DATE, nCrtLocID IN NUMBER, nSupervisorYN IN VARCHAR2) RETURN BOOLEAN is
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
--  Returns Yes or No so we know if need to Insert or Update
--
--  Ver--  Date------  Author----       History------------------------------
--  00001  2014-07-10  Sharolyn Hurley   Initial version
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

   CURSOR cSheriffSrvcesRowExists IS
      SELECT 'Y'
        FROM sheriff_srvces_hours
       WHERE month = nMonth
         AND crt_loc_id = nCrtLocID
         AND supervisor_yn = nSupervisorYN;

   vSheriffSrvcesRowExists VARCHAR2(1);

begin
   OPEN cSheriffSrvcesRowExists;
   FETCH cSheriffSrvcesRowExists INTO vSheriffSrvcesRowExists;
   CLOSE cSheriffSrvcesRowExists;

   if vSheriffSrvcesRowExists is null then
      RETURN FALSE;
   end if;

   RETURN TRUE;
exception
   when no_data_found then
      RETURN FALSE;
   when others then
      prWriteLinetoLog('Error checking for existing row '||SQLCODE||SQLERRM);
      RETURN FALSE;
end fnRowAlreadyExistsHours;

function fnColumnExistsinMaster (vCssColNm IN VARCHAR2) RETURN BOOLEAN is
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
--  Returns Yes or No so we know if the column provided in BCSS_IMPORT even exists in SHERIFF_SRVCES
--
--  Ver--  Date------  Author----       History------------------------------
--  00001  2014-01-12  Sharolyn Hurley   Initial version
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

   CURSOR cSheriffSrvcesColumnExists IS
      SELECT 'Y'
        FROM all_tab_columns
       WHERE table_name = 'SHERIFF_SRVCES'
         AND column_name = vCssColNm;


   vSheriffSrvcesColumnExists VARCHAR2(1);

begin
   OPEN cSheriffSrvcesColumnExists;
   FETCH cSheriffSrvcesColumnExists INTO vSheriffSrvcesColumnExists;
   CLOSE cSheriffSrvcesColumnExists;

   if vSheriffSrvcesColumnExists is null then
      RETURN FALSE;
   end if;

   RETURN TRUE;
exception
   when no_data_found then
      RETURN FALSE;
   when others then
      prWriteLinetoLog('Error checking for column '||SQLCODE||SQLERRM);
      RETURN FALSE;
end fnColumnExistsinMaster;

function fnColumnExistsinHours (vCssColNm IN VARCHAR2) RETURN BOOLEAN is
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
--  Returns Yes or No so we know if the column provided in BCSS_IMPORT even exists in SHERIFF_SRVCES
--
--  Ver--  Date------  Author----       History------------------------------
--  00001  2014-01-12  Sharolyn Hurley   Initial version
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

   CURSOR cSheriffSrvcesColumnExists IS
      SELECT 'Y'
        FROM all_tab_columns
       WHERE table_name = 'SHERIFF_SRVCES_HOURS'
         AND column_name = vCssColNm;


   vSheriffSrvcesColumnExists VARCHAR2(1);

begin
   OPEN cSheriffSrvcesColumnExists;
   FETCH cSheriffSrvcesColumnExists INTO vSheriffSrvcesColumnExists;
   CLOSE cSheriffSrvcesColumnExists;

   if vSheriffSrvcesColumnExists is null then
      RETURN FALSE;
   end if;

   RETURN TRUE;
exception
   when no_data_found then
      RETURN FALSE;
   when others then
      prWriteLinetoLog('Error checking for column '||SQLCODE||SQLERRM);
      RETURN FALSE;
end fnColumnExistsinHours;

---------------------------------------
-- PROCEDURES AVAILABLE IN PACKAGE SPEC
---------------------------------------


procedure prRunBCSSImport is
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
--  This function runs the BCSS Import from the BCSS_IMPORT table to the SHERIFF_SRVCES and SHERIFF_SRVCES_HOURS tables and cleans up afterwards
--
--  Ver--  Date------  Author----  History------------------------------
--  00001  2014-01-14  Sharolyn Hurley   Initial version
--  00002  2014-07-10  Sharolyn Hurley   Add Sheriff_Srvces_hours fields
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

   CURSOR cMonthstoImport IS
      SELECT distinct to_date(substr(month_yr,1,10),'MM/DD/YYYY') month_yr
        FROM bcss_import;

   CURSOR cBCSSImport (nMonth IN DATE) IS
      SELECT crt_loc_id, decode(supervision_yn,'0','N','1','Y') supervisor_yn, css_col_nm, stat_value
        FROM bcss_import
       WHERE to_date(substr(month_yr,1,10),'MM/DD/YYYY') = nMonth
       order by 1,2;

   vFunctiontoExecute VARCHAR2(1000);
begin

   UPDATE BCSS_IMPORT
   set stat_value = 0
   where stat_value is null;
   commit;

   FOR rMonthstoImport IN cMonthstoImport LOOP
      begin
         DELETE from SHERIFF_SRVCES
         WHERE month = rMonthstoImport.month_yr
         and crt_loc_id in (select distinct crt_loc_id from bcss_import
                            where to_date(substr(month_yr,1,10),'MM/DD/YYYY') = rMonthstoImport.month_yr);
         begin
         DELETE from SHERIFF_SRVCES_HOURS
         WHERE month = rMonthstoImport.month_yr
         and crt_loc_id in (select distinct crt_loc_id from bcss_import
                            where to_date(substr(month_yr,1,10),'MM/DD/YYYY') = rMonthstoImport.month_yr);
         exception when NO_DATA_FOUND then null;
         end;

         prWriteLinetoLog('Finished deleting old rows for '||rMonthstoImport.month_yr);

      exception
         when NO_DATA_FOUND then
		        prWriteLinetoLog('No data existed yet for Month '||rMonthstoImport.month_yr||SQLCODE||SQLERRM);
         when others then
            prWriteLinetoLog('Failure in Import '||SQLCODE||SQLERRM);
            ROLLBACK;
      end;

      FOR rBCSSImport IN cBCSSImport (rMonthstoImport.month_yr) LOOP
         if fnColumnExistsinMaster (rBCSSImport.css_col_nm) then
            if fnRowAlreadyExistsMaster (rMonthstoImport.month_yr, rBCSSImport.crt_loc_id, rBCSSImport.supervisor_yn) then

               vFunctiontoExecute := 'BEGIN '||
                                  'UPDATE SHERIFF_SRVCES SET '||
                                  rBCSSImport.css_col_nm || '= ' || rBCSSImport.stat_value ||
                                  ' WHERE month = '||'to_date('''||to_char(rMonthstoImport.month_yr,'DD-MON-YYYY')||''',''DD-MON-YYYY'')'||
                                  ' AND crt_loc_id = '||rBCSSImport.crt_loc_id||
                                  ' AND supervisor_yn = '''||rBCSSImport.supervisor_yn||''' ; '
                                  || 'END;';
               --dbms_output.put_line('vFunctiontoExecute is '||vFunctiontoExecute);

               EXECUTE IMMEDIATE vFunctiontoExecute;

            else
               vFunctiontoExecute := 'BEGIN '||
                                  'INSERT INTO SHERIFF_SRVCES (crt_loc_id, month, supervisor_yn, create_date, created_by, nil_report,'||
                                  rBCSSImport.css_col_nm || ') values ('||
                                  rBCSSImport.crt_loc_id||','||
                                  'to_date('''||to_char(rMonthstoImport.month_yr,'DD-MON-YYYY')||''',''DD-MON-YYYY'')'||','''||
                                  rBCSSImport.supervisor_yn||''','||
                                  'to_date('''||to_char(sysdate,'DD-MON-YYYY HH24:MI:SS')||''',''DD-MON-YYYY HH24:MI:SS'')'||','''||
                                  user||''','||
                                  '''N'','||
                                  rBCSSImport.stat_value ||'); '
                                  || 'END;';

               --dbms_output.put_line('vFunctiontoExecute is '||vFunctiontoExecute);
               EXECUTE IMMEDIATE vFunctiontoExecute;

               prWriteLinetoLog('Added row to Sheriff_Srvces for '||rMonthstoImport.month_yr||'/'||rBCSSImport.crt_loc_id||'/'||rBCSSImport.supervisor_yn);
            end if;
         elsif fnColumnExistsinHours (rBCSSImport.css_col_nm) then
            if fnRowAlreadyExistsHours (rMonthstoImport.month_yr, rBCSSImport.crt_loc_id, rBCSSImport.supervisor_yn) then

               vFunctiontoExecute := 'BEGIN '||
                                  'UPDATE SHERIFF_SRVCES_HOURS SET '||
                                  rBCSSImport.css_col_nm || '= ' || rBCSSImport.stat_value ||
                                  ' WHERE month = '||'to_date('''||to_char(rMonthstoImport.month_yr,'DD-MON-YYYY')||''',''DD-MON-YYYY'')'||
                                  ' AND crt_loc_id = '||rBCSSImport.crt_loc_id||
                                  ' AND supervisor_yn = '''||rBCSSImport.supervisor_yn||''' ; '
                                  || 'END;';
               --dbms_output.put_line('vFunctiontoExecute is '||vFunctiontoExecute);

               EXECUTE IMMEDIATE vFunctiontoExecute;

            else
               vFunctiontoExecute := 'BEGIN '||
                                  'INSERT INTO SHERIFF_SRVCES_HOURS (crt_loc_id, month, supervisor_yn, create_date, created_by,'||
                                  rBCSSImport.css_col_nm || ') values ('||
                                  rBCSSImport.crt_loc_id||','||
                                  'to_date('''||to_char(rMonthstoImport.month_yr,'DD-MON-YYYY')||''',''DD-MON-YYYY'')'||','''||
                                  rBCSSImport.supervisor_yn||''','||
                                  'to_date('''||to_char(sysdate,'DD-MON-YYYY HH24:MI:SS')||''',''DD-MON-YYYY HH24:MI:SS'')'||','''||
                                  user||''','||
                                  rBCSSImport.stat_value ||'); '
                                  || 'END;';

               --dbms_output.put_line('vFunctiontoExecute is '||vFunctiontoExecute);
               EXECUTE IMMEDIATE vFunctiontoExecute;

               prWriteLinetoLog('Added row to Sheriff_Srvces_Hours for '||rMonthstoImport.month_yr||'/'||rBCSSImport.crt_loc_id||'/'||rBCSSImport.supervisor_yn);
            end if;
         else
           prWriteLinetoLog('Column '||rBCSSImport.css_col_nm||' does not exist in the Sheriff Srvces tables - not loaded');
         end if;
      END LOOP;
   END LOOP;
   COMMIT;
   DELETE FROM BCSS_IMPORT;
   COMMIT;
exception
   when others then
      prWriteLinetoLog('Failure in Import '||SQLCODE||SQLERRM);
      ROLLBACK;
end prRunBCSSImport;

END css_bcss_import_pkg;
/
