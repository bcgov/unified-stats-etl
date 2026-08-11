-- ============================================================================
-- BCSS Stats ETL - SQL Agent Jobs (Dev / Test / Prod)
-- Pattern: Same as PCSS SQL Agent jobs
--
-- Usage: Run the section for the target environment.
--        Dev and Test are manual execution only.
--        Prod is scheduled daily at 1:00 AM, Tuesday through Saturday.
-- ============================================================================

-- ===========================================
-- DEV (manual execution only)
-- ===========================================

USE [msdb]
GO

BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0

DECLARE @jobId BINARY(16)
EXEC @ReturnCode = msdb.dbo.sp_add_job @job_name=N'BCSS Stats Export To Oracle - Dev',
        @enabled=1,
        @notify_level_eventlog=0,
        @notify_level_email=2,
        @notify_level_netsend=0,
        @notify_level_page=0,
        @delete_level=0,
        @description=N'Exports BCSS Stats data from PostgreSQL (OpenShift) to Oracle DEV (bidevv).',
        @category_name=N'[Uncategorized (Local)]',
        @owner_login_name=N'IDIR\CATSDEPL',
        @job_id = @jobId OUTPUT

EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Execute BCSS Stats Export',
        @step_id=1,
        @cmdexec_success_code=0,
        @on_success_action=1,
        @on_success_step_id=0,
        @on_fail_action=2,
        @on_fail_step_id=0,
        @retry_attempts=0,
        @retry_interval=0,
        @os_run_priority=0, @subsystem=N'SSIS',
        @command=N'/ISSERVER "\"\SSISDB\BCSS\BCSS.Stats.Ssis\FullBcssStatsExportToOracle.dtsx\"" /SERVER "\"\\ETL\BCBI\BCSS\Dev\""  /CONFIGFILE "\"\\ETL\BCBI\BCSS\Dev\FullBcssStatsExportToOracle.dtsConfig\""  /CHECKPOINTING OFF /REPORTING E',
        @database_name=N'master',
        @flags=0,
        @proxy_name=N'CatsSsisPackageExecutionProxy'

EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'

COMMIT TRANSACTION
GO

-- ===========================================
-- TEST (manual execution only)
-- ===========================================

USE [msdb]
GO

BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0

DECLARE @jobId BINARY(16)
EXEC @ReturnCode = msdb.dbo.sp_add_job @job_name=N'BCSS Stats Export To Oracle - Test',
        @enabled=1,
        @notify_level_eventlog=0,
        @notify_level_email=2,
        @notify_level_netsend=0,
        @notify_level_page=0,
        @delete_level=0,
        @description=N'Exports BCSS Stats data from PostgreSQL (OpenShift) to Oracle TEST (bitstv).',
        @category_name=N'[Uncategorized (Local)]',
        @owner_login_name=N'IDIR\CATSDEPL',
        @job_id = @jobId OUTPUT

EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Execute BCSS Stats Export',
        @step_id=1,
        @cmdexec_success_code=0,
        @on_success_action=1,
        @on_success_step_id=0,
        @on_fail_action=2,
        @on_fail_step_id=0,
        @retry_attempts=0,
        @retry_interval=0,
        @os_run_priority=0, @subsystem=N'SSIS',
        @command=N'/ISSERVER "\"\SSISDB\BCSS\BCSS.Stats.Ssis\FullBcssStatsExportToOracle.dtsx\"" /SERVER "\"\\ETL\BCBI\BCSS\Test\""  /CONFIGFILE "\"\\ETL\BCBI\BCSS\Test\FullBcssStatsExportToOracle.dtsConfig\""  /CHECKPOINTING OFF /REPORTING E',
        @database_name=N'master',
        @flags=0,
        @proxy_name=N'CatsSsisPackageExecutionProxy'

EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'

COMMIT TRANSACTION
GO

-- ===========================================
-- PROD (scheduled: daily 1:00 AM, Tue-Sat)
-- ===========================================

USE [msdb]
GO

BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0

DECLARE @jobId BINARY(16)
EXEC @ReturnCode = msdb.dbo.sp_add_job @job_name=N'BCSS Stats Export To Oracle - Prod',
        @enabled=1,
        @notify_level_eventlog=0,
        @notify_level_email=2,
        @notify_level_netsend=0,
        @notify_level_page=0,
        @delete_level=0,
        @description=N'Exports BCSS Stats data from PostgreSQL (OpenShift) to Oracle PROD (biprdv). Daily complete refresh.',
        @category_name=N'[Uncategorized (Local)]',
        @owner_login_name=N'IDIR\CATSDEPL',
        @job_id = @jobId OUTPUT

EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Execute BCSS Stats Export',
        @step_id=1,
        @cmdexec_success_code=0,
        @on_success_action=1,
        @on_success_step_id=0,
        @on_fail_action=2,
        @on_fail_step_id=0,
        @retry_attempts=0,
        @retry_interval=0,
        @os_run_priority=0, @subsystem=N'SSIS',
        @command=N'/ISSERVER "\"\SSISDB\BCSS\BCSS.Stats.Ssis\FullBcssStatsExportToOracle.dtsx\"" /SERVER "\"\\ETL\BCBI\BCSS\Prod\""  /CONFIGFILE "\"\\ETL\BCBI\BCSS\Prod\FullBcssStatsExportToOracle.dtsConfig\""  /CHECKPOINTING OFF /REPORTING E',
        @database_name=N'master',
        @flags=0,
        @proxy_name=N'CatsSsisPackageExecutionProxy'

DECLARE @scheduleId INT
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'BCSS Stats Daily Export',
        @enabled=1,
        @freq_type=8,
        @freq_interval=124,
        @freq_subday_type=1,
        @freq_subday_interval=0,
        @freq_relative_interval=0,
        @freq_recurrence_factor=1,
        @active_start_date=20260101,
        @active_end_date=99991231,
        @active_start_time=10000,
        @active_end_time=235959,
        @schedule_id = @scheduleId OUTPUT

EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'

COMMIT TRANSACTION
GO
