-- ============================================================================
-- BCSS Stats - Oracle Indexes (Staging)
-- ============================================================================

WHENEVER SQLERROR EXIT SQL.SQLCODE
alter session set container = freepdb1;
alter session set current_schema = etl_target;

-- StatCategories
create index ix_stat_cat_group_id on
   stat_categories (
      group_id
   );

-- SubCategories
create index ix_sub_cat_category_id on
   sub_categories (
      category_id
   );

-- SubCategoryMetrics
create index ix_scm_sub_category_id on
   sub_category_metrics (
      sub_category_id
   );
create index ix_scm_metric_id on
   sub_category_metrics (
      metric_id
   );

-- StatRecords
create index ix_stat_rec_location_id on
   stat_records (
      location_id
   );
create index ix_stat_rec_scm_id on
   stat_records (
      sub_category_metric_id
   );
create index ix_stat_rec_date_range on
   stat_records (
      date_from,
      date_to
   );
create index ix_stat_rec_user_id on
   stat_records (
      user_id
   );
create index ix_stat_rec_status on
   stat_records (
      status
   );

-- StatSignoffs
create index ix_stat_so_location_id on
   stat_signoffs (
      location_id
   );
create index ix_stat_so_user_id on
   stat_signoffs (
      user_id
   );