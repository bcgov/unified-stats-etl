# Open Questions & Action Items

## Open Questions

- [ ] **Oracle data location** — Confirm with Cindy's team where exactly in the DW the BCSS Stats data should land
- [ ] **BI team access** — How will the BI team reliably access the data?
- [ ] **Data sensitivity review** — Any stats fields that should be excluded or masked before export?
- [ ] **PostgreSQL service account** — What credentials will SSIS use to connect to PostgreSQL?

## Action Items

### Network & Infrastructure
- [ ] **Devin:** Expose PostgreSQL in OpenShift Emerald via Load Balancer, provide external IP/hostname
- [ ] **Infra:** Submit firewall request: Beach (`beach.idir.bcgov`) → PostgreSQL LB (port 5432)
- [ ] **Infra:** Complete network diagram with all IPs

### Oracle
- [ ] **DBA:** Create BCSS user/schema on bidevv, bitstv, biprdv
- [ ] **DBA:** Run `DDL/Oracle/bcss-create-tables.sql` to create target tables

### SSIS Server (Beach)
- [ ] Install PostgreSQL Unicode ODBC driver on Beach
- [ ] Create file share `\\ETL\BCBI\BCSS\{Dev,Test,Prod}` and grant `IDIR\CATSDEPL` access

### CI/CD
- [ ] Create BCSS Stats ETL Jenkins project (similar to PCSS-BI)
