# Open Questions

## Network & Infrastructure

- [ ] **PostgreSQL Load Balancer** — Devin to expose PostgreSQL in OpenShift Emerald via LB. What will the external IP/hostname be?
- [ ] **Firewall rules** — Need source/destination IPs for the diagram:
  - Beach (SSIS server) → PostgreSQL LB (port 5432)
  - Beach → Oracle servers (port 1521) — is this already open from PCSS?
- [ ] **Network diagram** — Need to complete the diagram with all IPs before firewall requests can be submitted

## Oracle

- [ ] **BCSS schema/user** — Has the BCSS user been created on bidevv, bitstv, biprdv? Who is the DBA contact?
- [ ] **Oracle location of BCSS Stats data** — Confirm with Cindy's team where exactly in the DW the data should land
- [ ] **Data isolation** — Confirm staging database setup so BCSS data doesn't interfere with existing reporting data

## SSIS Server (Beach)

- [ ] **PostgreSQL ODBC driver** — Is the PostgreSQL Unicode ODBC driver installed on Beach? If not, who handles that?
- [ ] **File share** — Create `\\ETL\BCBI\BCSS\{Dev,Test,Prod}` on Beach and grant `IDIR\CATSDEPL` access
- [ ] **Jenkins project** — Create the BCSS Stats ETL Jenkins project (similar to PCSS-BI)

## BI Team

- [ ] **BI team access** — How will the BI team reliably access the data? (acceptance criteria — TBD)
- [ ] **Refresh confirmation** — Confirm daily complete refresh is the right approach (vs. incremental)

## Source Data

- [ ] **PostgreSQL credentials** — Service account for SSIS to connect to the PostgreSQL database
- [ ] **Data sensitivity review** — Any stats fields that should be excluded or masked before export?
