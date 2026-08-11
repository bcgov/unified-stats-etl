-- ============================================================================
-- BCSS Stats ETL - SSIS Configuration Table Entries
-- Add these rows to the [ETLs_Configuration].[dbo].[SSIS Configurations] table
-- on the SQL/SSIS server (Beach).
-- ============================================================================
-- Pattern: Same as PCSS - configuration stored in SQL Server database,
-- SSIS package reads connection strings from here at runtime.
-- ============================================================================

USE [ETLs_Configuration]
GO

-- ===========================================
-- DEV Environment
-- ===========================================

-- Source: PostgreSQL (OpenShift Emerald) via ODBC
INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Dev', N'Dev - Source BCSS PostgreSQL Database', N'\Package.Connections[Source].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Dev', N'Driver={PostgreSQL Unicode};Server=<OPENSHIFT_ROUTE>;Port=5432;Database=unified_scheduling;Uid=<USERNAME>;Pwd=<Password/>;', N'\Package.Connections[Source].Properties[ConnectionString]', N'String')

-- Destination: Oracle DEV (OLE DB)
INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Dev', N'Dev - Destination Oracle Database', N'\Package.Connections[Destination].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Dev', N'Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=bidevv.bcgov)(PORT = 1521)))(CONNECT_DATA=(SID=devv)(SERVER=DEDICATED)));User ID=BCSS;Password=<Password/>;Provider=OraOLEDB.Oracle.1;', N'\Package.Connections[Destination].Properties[ConnectionString]', N'String')

-- Destination: Oracle DEV (Attunity Connector)
INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Dev', N'Dev - Destination Oracle Database (Attunity Connector)', N'\Package.Connections[OracleDestination].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Dev', N'SERVER=bidevv.bcgov/devv;USERNAME=BCSS;Password=<Password/>;', N'\Package.Connections[OracleDestination].Properties[ConnectionString]', N'String')

-- ===========================================
-- TEST Environment
-- ===========================================

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Test', N'Test - Source BCSS PostgreSQL Database', N'\Package.Connections[Source].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Test', N'Driver={PostgreSQL Unicode};Server=<OPENSHIFT_ROUTE>;Port=5432;Database=unified_scheduling;Uid=<USERNAME>;Pwd=<Password/>;', N'\Package.Connections[Source].Properties[ConnectionString]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Test', N'Test - Destination Oracle Database', N'\Package.Connections[Destination].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Test', N'Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=bitstv.bcgov)(PORT=1521)))(CONNECT_DATA=(SID=tstv)(SERVER=DEDICATED)));User ID=BCSS;Password=<Password/>;Provider=OraOLEDB.Oracle.1;', N'\Package.Connections[Destination].Properties[ConnectionString]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Test', N'Test - Destination Oracle Database (Attunity Connector)', N'\Package.Connections[OracleDestination].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Test', N'SERVER=bitstv.bcgov/tstv;USERNAME=BCSS;Password=<Password/>;', N'\Package.Connections[OracleDestination].Properties[ConnectionString]', N'String')

-- ===========================================
-- PROD Environment
-- ===========================================

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Prod', N'Prod - Source BCSS PostgreSQL Database', N'\Package.Connections[Source].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Prod', N'Driver={PostgreSQL Unicode};Server=<OPENSHIFT_ROUTE>;Port=5432;Database=unified_scheduling;Uid=<USERNAME>;Pwd=<Password/>;', N'\Package.Connections[Source].Properties[ConnectionString]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Prod', N'Prod - Destination Oracle Database', N'\Package.Connections[Destination].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Prod', N'Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=biprdv.bcgov)(PORT=1521)))(CONNECT_DATA=(SID=prdv)(SERVER=DEDICATED)));User ID=BCSS;Password=<Password/>;Provider=OraOLEDB.Oracle.1;', N'\Package.Connections[Destination].Properties[ConnectionString]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Prod', N'Prod - Destination Oracle Database (Attunity Connector)', N'\Package.Connections[OracleDestination].Properties[Description]', N'String')

INSERT [dbo].[SSIS Configurations] ([ConfigurationFilter], [ConfiguredValue], [PackagePath], [ConfiguredValueType])
VALUES (N'FullBcssStatsExportToOracle_Prod', N'SERVER=biprdv.bcgov/prdv;USERNAME=BCSS;Password=<Password/>;', N'\Package.Connections[OracleDestination].Properties[ConnectionString]', N'String')
GO
