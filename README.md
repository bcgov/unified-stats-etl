# Unified Stats ETL

ETL packages for populating the CSB BI Data Warehouse (BRPDZ) from the BC Sheriff Service (BCSS) Unified Scheduling application.

## Pipeline Overview

```
PostgreSQL (OpenShift Emerald)
       ↓  ODBC (direct connect)
SSIS on <SSIS_SERVER> (Extract, Transform, Load)
       ↓  OLE DB
Oracle 12c Data Warehouse (BRPDZ)
```

SSIS connects directly to both sides — extracts from PostgreSQL, transforms, and loads into Oracle. Same pattern as PCSS-DW.

- **SQL Agent** runs the ETL job on a daily schedule (no human involvement)
- **Jenkins** deploys the SSIS packages to the SSIS server — it does NOT trigger ETL runs
- **PostgreSQL** is exposed via a Load Balancer in OpenShift Emerald

## Technology Stack

- **Source Database:** PostgreSQL (OpenShift Emerald, exposed via LB)
- **ETL Tool:** SQL Server Integration Services (SSIS 2019) on `<SSIS_SERVER>`
- **Target Database:** Oracle 12c (BRPDZ BI Data Warehouse)
- **CI/CD:** Jenkins (package deployment only)
- **Reporting:** Power BI

All target databases are Oracle 12c, port `1521`, using dedicated server connections.

## Security & Data Handling

This repository follows [BC Gov's Work in the Open](https://digital.gov.bc.ca/policies-standards/dcop/open/) policy. The ETL scripts themselves do not contain sensitive data, but the following mitigations are in place:

| Risk Area                    | Why It Might Be Protected                                                            | Mitigation                                                                      |
| ---------------------------- | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| Pipeline Logs & Error Traces | Logs often output failed row payloads containing raw, sensitive data.                | Mask or redact sensitive fields before writing to log sinks.                    |
| Staging & Temporary Tables   | Temporary database tables created during transformation may contain unencrypted PII. | Enforce row-level security, encryption at rest, and automated cleanup.          |
| Sample / Test Data           | Developers often commit mock or sample datasets to source control.                   | Ensure test data is fully synthetic or anonymized — never real production data. |

> **Important:** Never commit real production data, credentials, or connection strings to this repository.

## ETL Process

- **Refresh Frequency:** Daily, complete refresh (following the same pattern used for PCSS)
- **Data Isolation:** Data is exported to a staging database, then extracted to subsequent BI databases as needed — no risk of overwriting or disrupting existing reporting data
- **Automation:** SSIS scripts handle the data refresh automatically (no human involvement)

## Project Structure

```
unified-stats-etl/
├── DDL/Oracle/                     # Oracle target database scripts
│   ├── bcss-create-tables.sql      # CREATE TABLE for all 7 stats tables
│   ├── bcss-create-fk.sql          # Foreign key constraints
│   └── bcss-create-indexes.sql     # Indexes
├── SQL/                            # SQL Server scripts
│   ├── ETL_Configuration_Table.sql # SSIS config entries (Dev/Test/Prod)
│   └── SsisSqlAgentJob.sql         # SQL Agent jobs (Dev/Test/Prod)
├── SSIS/                           # SSIS project
│   ├── build.xml                   # MSBuild config for Jenkins
│   └── BCSS.Stats.Ssis/
│       ├── BCSS.Stats.Ssis.dtproj  # SSIS project file
│       └── FullBcssStatsExportToOracle.dtsx  # Main ETL package
├── README.md
├── LICENSE
└── .gitignore
```

## Tables Exported

| #   | Source (PostgreSQL) | Target (Oracle)      | Rows (approx) |
| --- | ------------------- | -------------------- | ------------- |
| 1   | StatGroups          | STAT_GROUPS          | 2             |
| 2   | StatCategories      | STAT_CATEGORIES      | 25            |
| 3   | SubCategories       | SUB_CATEGORIES       | 91            |
| 4   | StatMetrics         | STAT_METRICS         | 49            |
| 5   | SubCategoryMetrics  | SUB_CATEGORY_METRICS | 365           |
| 6   | StatRecords         | STAT_RECORDS         | Growing       |
| 7   | StatSignoffs        | STAT_SIGNOFFS        | Growing       |

## Prerequisites

For full targets and network information see the following protected wiki: https://wiki.justice.gov.bc.ca/wiki/spaces/CSA/pages/538705956/Stats+ETL+project

### Network & Firewall
- PostgreSQL exposed via Load Balancer in OpenShift Emerald
- Firewall rule: SSIS server to PostgreSQL Load Balancer (port 5432)
- Firewall rule: SSIS server to Oracle servers (port 1521) — likely already open from existing BI patterns

### SSIS Server
Following the PCSS pattern (see PCBI Infrastructure documentation):

1. **Oracle Client Tools** (x86 and x64) installed on the SSIS server
2. **Microsoft SSIS Connectors v2.0 for Oracle** (Attunity Oracle Adapters)
3. **PostgreSQL Unicode ODBC Driver** installed on the SSIS server
4. **ETLs_Configuration** database with SSIS configuration entries
5. **SQL Agent credentials** (`<DOMAIN>\<SERVICE_ACCOUNT>`) and proxy (`<SSIS_PROXY>`)
6. **File share** `\\<SHARE_HOST>\<PATH>\{Dev,Test,Prod}` for deployed packages

### Oracle
- BCSS user/schema created on target Oracle hosts
- Tables created via `DDL/Oracle/bcss-create-tables.sql`

## License

This project is licensed under the Apache License 2.0 — see the [LICENSE](LICENSE) file for details.
