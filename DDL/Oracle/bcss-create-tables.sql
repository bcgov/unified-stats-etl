-- ============================================================================
-- BCSS Stats - Oracle Target Tables (Staging)
-- Mirrors the PostgreSQL schema from Unified Scheduling
-- Pattern: Full truncate-and-reload (same as PCSS)
-- ============================================================================

-- Note: Audit columns (CreatedById, UpdatedById) are included in the mirror
-- but foreign keys to Users are NOT created in Oracle since Users table
-- is not replicated. The FK relationships are enforced at the source (PostgreSQL).
-- xmin (PostgreSQL row version) is excluded as it has no Oracle equivalent.

WHENEVER SQLERROR EXIT SQL.SQLCODE
alter session set container = freepdb1;
alter session set current_schema = etl_target;

-- ============================================================================
-- 1. STAT_GROUPS
-- ============================================================================
create table stat_groups (
   id            number(10) not null,
   name          varchar2(500 byte) not null,
   display_order number(10) not null,
   created_by_id varchar2(36 byte),
   created_on    timestamp(3) not null,
   updated_by_id varchar2(36 byte),
   updated_on    timestamp(3)
);

alter table stat_groups add constraint stat_groups_pk primary key ( id );

-- ============================================================================
-- 2. STAT_CATEGORIES
-- ============================================================================
create table stat_categories (
   id               number(10) not null,
   group_id         number(10) not null,
   name             varchar2(500 byte) not null,
   is_archived      number(1) not null,
   is_high_security number(1) not null,
   display_order    number(10) not null,
   created_by_id    varchar2(36 byte),
   created_on       timestamp(3) not null,
   updated_by_id    varchar2(36 byte),
   updated_on       timestamp(3)
);

alter table stat_categories add constraint stat_categories_pk primary key ( id );

-- ============================================================================
-- 3. SUB_CATEGORIES
-- ============================================================================
create table sub_categories (
   id            number(10) not null,
   category_id   number(10) not null,
   name          varchar2(500 byte) not null,
   display_order number(10) not null,
   created_by_id varchar2(36 byte),
   created_on    timestamp(3) not null,
   updated_by_id varchar2(36 byte),
   updated_on    timestamp(3)
);

alter table sub_categories add constraint sub_categories_pk primary key ( id );

-- ============================================================================
-- 4. STAT_METRICS
-- ============================================================================
create table stat_metrics (
   id              number(10) not null,
   name            varchar2(500 byte) not null,
   unit_of_measure varchar2(100 byte) not null,
   is_overtime     number(1) not null,
   created_by_id   varchar2(36 byte),
   created_on      timestamp(3) not null,
   updated_by_id   varchar2(36 byte),
   updated_on      timestamp(3)
);

alter table stat_metrics add constraint stat_metrics_pk primary key ( id );

-- ============================================================================
-- 5. SUB_CATEGORY_METRICS
-- ============================================================================
create table sub_category_metrics (
   id              number(10) not null,
   sub_category_id number(10) not null,
   metric_id       number(10) not null,
   display_order   number(10) not null,
   created_by_id   varchar2(36 byte),
   created_on      timestamp(3) not null,
   updated_by_id   varchar2(36 byte),
   updated_on      timestamp(3)
);

alter table sub_category_metrics add constraint sub_category_metrics_pk primary key ( id );

-- ============================================================================
-- 6. STAT_RECORDS
-- ============================================================================
create table stat_records (
   id                     number(10) not null,
   date_from              date not null,
   date_to                date not null,
   period_type            varchar2(50 byte) not null,
   location_id            number(10) not null,
   sub_category_metric_id number(10) not null,
   value                  number(18,4) not null,
   status                 varchar2(50 byte) not null,
   comment_text           varchar2(1000 byte),
   user_id                varchar2(36 byte),
   signed_off_by_user_id  varchar2(36 byte),
   signed_off_at          timestamp(3),
   created_by_id          varchar2(36 byte),
   created_on             timestamp(3) not null,
   updated_by_id          varchar2(36 byte),
   updated_on             timestamp(3)
);

alter table stat_records add constraint stat_records_pk primary key ( id );

-- ============================================================================
-- 7. STAT_SIGNOFFS
-- ============================================================================
create table stat_signoffs (
   id            number(10) not null,
   user_id       varchar2(36 byte) not null,
   location_id   number(10) not null,
   month         number(2) not null,
   year          number(4) not null,
   signoff_date  timestamp(3) not null,
   created_by_id varchar2(36 byte),
   created_on    timestamp(3) not null,
   updated_by_id varchar2(36 byte),
   updated_on    timestamp(3)
);

alter table stat_signoffs add constraint stat_signoffs_pk primary key ( id );

alter table stat_signoffs
   add constraint stat_signoffs_user_loc_month_year_un unique ( user_id,
                                                                location_id,
                                                                month,
                                                                year );