-- ============================================================================
-- BCSS Stats - Oracle Target Tables (Staging)
-- Mirrors the PostgreSQL schema from Unified Scheduling
-- Pattern: Full truncate-and-reload (same as PCSS)
-- ============================================================================

-- Note: Audit columns (CreatedById, UpdatedById) are included in the mirror
-- but foreign keys to Users are NOT created in Oracle since Users table
-- is not replicated. The FK relationships are enforced at the source (PostgreSQL).
-- xmin (PostgreSQL row version) is excluded as it has no Oracle equivalent.

-- ============================================================================
-- 1. STAT_GROUPS
-- ============================================================================
CREATE TABLE STAT_GROUPS
    (
     ID                  NUMBER(10)      NOT NULL,
     NAME                VARCHAR2(500 BYTE) NOT NULL,
     DISPLAY_ORDER       NUMBER(10)      NOT NULL,
     CREATED_BY_ID       VARCHAR2(36 BYTE),
     CREATED_ON          TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID       VARCHAR2(36 BYTE),
     UPDATED_ON          TIMESTAMP(3)
    )
;

ALTER TABLE STAT_GROUPS
    ADD CONSTRAINT STAT_GROUPS_PK PRIMARY KEY (ID);

-- ============================================================================
-- 2. STAT_CATEGORIES
-- ============================================================================
CREATE TABLE STAT_CATEGORIES
    (
     ID                  NUMBER(10)      NOT NULL,
     GROUP_ID            NUMBER(10)      NOT NULL,
     NAME                VARCHAR2(500 BYTE) NOT NULL,
     IS_ARCHIVED         NUMBER(1)       NOT NULL,
     IS_HIGH_SECURITY    NUMBER(1)       NOT NULL,
     DISPLAY_ORDER       NUMBER(10)      NOT NULL,
     CREATED_BY_ID       VARCHAR2(36 BYTE),
     CREATED_ON          TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID       VARCHAR2(36 BYTE),
     UPDATED_ON          TIMESTAMP(3)
    )
;

ALTER TABLE STAT_CATEGORIES
    ADD CONSTRAINT STAT_CATEGORIES_PK PRIMARY KEY (ID);

-- ============================================================================
-- 3. SUB_CATEGORIES
-- ============================================================================
CREATE TABLE SUB_CATEGORIES
    (
     ID                  NUMBER(10)      NOT NULL,
     CATEGORY_ID         NUMBER(10)      NOT NULL,
     NAME                VARCHAR2(500 BYTE) NOT NULL,
     DISPLAY_ORDER       NUMBER(10)      NOT NULL,
     CREATED_BY_ID       VARCHAR2(36 BYTE),
     CREATED_ON          TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID       VARCHAR2(36 BYTE),
     UPDATED_ON          TIMESTAMP(3)
    )
;

ALTER TABLE SUB_CATEGORIES
    ADD CONSTRAINT SUB_CATEGORIES_PK PRIMARY KEY (ID);

-- ============================================================================
-- 4. STAT_METRICS
-- ============================================================================
CREATE TABLE STAT_METRICS
    (
     ID                  NUMBER(10)      NOT NULL,
     NAME                VARCHAR2(500 BYTE) NOT NULL,
     UNIT_OF_MEASURE     VARCHAR2(100 BYTE) NOT NULL,
     IS_OVERTIME         NUMBER(1)       NOT NULL,
     CREATED_BY_ID       VARCHAR2(36 BYTE),
     CREATED_ON          TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID       VARCHAR2(36 BYTE),
     UPDATED_ON          TIMESTAMP(3)
    )
;

ALTER TABLE STAT_METRICS
    ADD CONSTRAINT STAT_METRICS_PK PRIMARY KEY (ID);

-- ============================================================================
-- 5. SUB_CATEGORY_METRICS
-- ============================================================================
CREATE TABLE SUB_CATEGORY_METRICS
    (
     ID                  NUMBER(10)      NOT NULL,
     SUB_CATEGORY_ID     NUMBER(10)      NOT NULL,
     METRIC_ID           NUMBER(10)      NOT NULL,
     DISPLAY_ORDER       NUMBER(10)      NOT NULL,
     CREATED_BY_ID       VARCHAR2(36 BYTE),
     CREATED_ON          TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID       VARCHAR2(36 BYTE),
     UPDATED_ON          TIMESTAMP(3)
    )
;

ALTER TABLE SUB_CATEGORY_METRICS
    ADD CONSTRAINT SUB_CATEGORY_METRICS_PK PRIMARY KEY (ID);

-- ============================================================================
-- 6. STAT_RECORDS
-- ============================================================================
CREATE TABLE STAT_RECORDS
    (
     ID                      NUMBER(10)      NOT NULL,
     DATE_FROM               DATE            NOT NULL,
     DATE_TO                 DATE            NOT NULL,
     PERIOD_TYPE             VARCHAR2(50 BYTE) NOT NULL,
     LOCATION_ID             NUMBER(10)      NOT NULL,
     SUB_CATEGORY_METRIC_ID  NUMBER(10)      NOT NULL,
     VALUE                   NUMBER(18,4)    NOT NULL,
     STATUS                  VARCHAR2(50 BYTE) NOT NULL,
     COMMENT_TEXT            VARCHAR2(1000 BYTE),
     USER_ID                 VARCHAR2(36 BYTE),
     SIGNED_OFF_BY_USER_ID   VARCHAR2(36 BYTE),
     SIGNED_OFF_AT           TIMESTAMP(3),
     CREATED_BY_ID           VARCHAR2(36 BYTE),
     CREATED_ON              TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID           VARCHAR2(36 BYTE),
     UPDATED_ON              TIMESTAMP(3)
    )
;

ALTER TABLE STAT_RECORDS
    ADD CONSTRAINT STAT_RECORDS_PK PRIMARY KEY (ID);

-- ============================================================================
-- 7. STAT_SIGNOFFS
-- ============================================================================
CREATE TABLE STAT_SIGNOFFS
    (
     ID                  NUMBER(10)      NOT NULL,
     USER_ID             VARCHAR2(36 BYTE) NOT NULL,
     LOCATION_ID         NUMBER(10)      NOT NULL,
     MONTH               NUMBER(2)       NOT NULL,
     YEAR                NUMBER(4)       NOT NULL,
     SIGNOFF_DATE        TIMESTAMP(3)    NOT NULL,
     CREATED_BY_ID       VARCHAR2(36 BYTE),
     CREATED_ON          TIMESTAMP(3)    NOT NULL,
     UPDATED_BY_ID       VARCHAR2(36 BYTE),
     UPDATED_ON          TIMESTAMP(3)
    )
;

ALTER TABLE STAT_SIGNOFFS
    ADD CONSTRAINT STAT_SIGNOFFS_PK PRIMARY KEY (ID);

ALTER TABLE STAT_SIGNOFFS
    ADD CONSTRAINT STAT_SIGNOFFS_USER_LOC_MONTH_YEAR_UN
    UNIQUE (USER_ID, LOCATION_ID, MONTH, YEAR);
