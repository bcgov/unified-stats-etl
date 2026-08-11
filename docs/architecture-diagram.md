# BCSS Stats ETL — Architecture Diagram

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│ ISB/HPAS - Zone B                                                                       │
│                                                                                         │
│  ┌──────────────────────────┐         ┌──────────────────────────────────┐               │
│  │ SSIS Server (Beach)      │         │ Jenkins                          │               │
│  │ beach.idir.bcgov         │◄────────│ catscde.bcgov                    │               │
│  │ IP: <TBD>                │ Deploy  │                                  │               │
│  │                          │ SSIS    │ Jenkins Slave: parole.bcgov      │               │
│  │ - SSIS 2019              │ Pkgs    │                                  │               │
│  │ - SQL Agent (scheduler)  │         └──────────────────────────────────┘               │
│  │ - PostgreSQL ODBC Driver │                                                           │
│  │ - Oracle Client Tools    │                                                           │
│  │ - Attunity Connectors    │                                                           │
│  │                          │                                                           │
│  │ File Share:              │                                                           │
│  │ \\ETL\BCBI\BCSS\         │                                                           │
│  │  ├── Dev\                │                                                           │
│  │  ├── Test\               │                                                           │
│  │  └── Prod\               │                                                           │
│  └──────────┬───────────────┘                                                           │
│             │                                                                           │
│             │ Port 1521 (OLE DB)                                                        │
│             ▼                                                                           │
│  ┌─────────────────────────────────────────────────────────────────────────────────┐     │
│  │ ISB/HPAS - Zone A                                                               │     │
│  │                                                                                 │     │
│  │  ┌────────────────────────────────────────────────────────────────────────────┐  │     │
│  │  │ Oracle Data Warehouse (BRPDZ)                                              │  │     │
│  │  │                                                                            │  │     │
│  │  │  Dev  - bidevv.bcgov : 1521  SID=devv   (bidevv.bcgov/devv)               │  │     │
│  │  │  Test - bitstv.bcgov : 1521  SID=tstv   (bitstv.bcgov/tstv)               │  │     │
│  │  │  Prod - biprdv.bcgov : 1521  SID=prdv   (biprdv.bcgov/prdv)               │  │     │
│  │  │                                                                            │  │     │
│  │  │  Schema: BCSS                                                              │  │     │
│  │  │  Tables: STAT_GROUPS, STAT_CATEGORIES, SUB_CATEGORIES,                     │  │     │
│  │  │          STAT_METRICS, SUB_CATEGORY_METRICS, STAT_RECORDS,                 │  │     │
│  │  │          STAT_SIGNOFFS                                                     │  │     │
│  │  └────────────────────────────────────────────────────────────────────────────┘  │     │
│  └─────────────────────────────────────────────────────────────────────────────────┘     │
└─────────────────────────────────────────────────────────────────────────────────────────┘

                          ▲
                          │ Port 5432 (ODBC)
                          │ NEW Firewall Rule Required
                          │

┌─────────────────────────────────────────────────────────────────────────────────────────┐
│ OpenShift Emerald                                                                       │
│                                                                                         │
│  ┌────────────────────────────────────────────────────────────────────────────────────┐  │
│  │ BCSS Unified Scheduling                                                            │  │
│  │                                                                                    │  │
│  │  PostgreSQL Database                                                               │  │
│  │  Exposed via Load Balancer                                                         │  │
│  │                                                                                    │  │
│  │  Dev  - <LB IP/HOSTNAME TBD> : 5432                                               │  │
│  │  Test - <LB IP/HOSTNAME TBD> : 5432                                               │  │
│  │  Prod - <LB IP/HOSTNAME TBD> : 5432                                               │  │
│  │                                                                                    │  │
│  │  Source Tables: "StatGroups", "StatCategories", "SubCategories",                   │  │
│  │                 "StatMetrics", "SubCategoryMetrics", "StatRecords",                │  │
│  │                 "StatSignoffs"                                                     │  │
│  └────────────────────────────────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────────────────────────┘


Data Flow:
──────────
1. SQL Agent on Beach triggers SSIS package daily at 1:00 AM (Tue-Sat)
2. SSIS connects to PostgreSQL via ODBC through Load Balancer
3. SSIS disables FK constraints on Oracle, truncates target tables
4. SSIS extracts all rows from 7 source tables, transforms (type mapping), loads into Oracle
5. SSIS re-enables FK constraints on Oracle

Deployment Flow:
────────────────
1. Developer pushes to bcgov/unified-stats-etl
2. Jenkins (catscde.bcgov) builds SSIS package via MSBuild
3. Jenkins deploys .ispac to \\ETL\BCBI\BCSS\{env} on Beach


Firewall Rules Required:
────────────────────────
┌────────────────────────┬──────────────────────────────┬──────────┬────────────────────┐
│ Source                 │ Destination                  │ Port     │ Status             │
├────────────────────────┼──────────────────────────────┼──────────┼────────────────────┤
│ Beach (beach.idir.     │ PostgreSQL LB (OpenShift     │ 5432     │ NEW - Required     │
│ bcgov) IP: <TBD>       │ Emerald) IP: <TBD>           │          │                    │
├────────────────────────┼──────────────────────────────┼──────────┼────────────────────┤
│ Beach (beach.idir.     │ bidevv.bcgov                 │ 1521     │ Likely exists      │
│ bcgov)                 │ bitstv.bcgov                 │          │ (from PCSS)        │
│                        │ biprdv.bcgov                 │          │                    │
└────────────────────────┴──────────────────────────────┴──────────┴────────────────────┘
```
