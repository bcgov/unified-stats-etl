-- ============================================================================
-- BCSS Stats - Oracle Foreign Keys (Staging)
-- These enforce referential integrity between the stats tables.
-- No FKs to Users/Locations since those are not replicated.
-- ============================================================================

WHENEVER SQLERROR EXIT SQL.SQLCODE
alter session set container = freepdb1;
alter session set current_schema = etl_target;

-- StatCategories -> StatGroups
alter table stat_categories
   add constraint fk_stat_cat_group foreign key ( group_id )
      references stat_groups ( id );

-- SubCategories -> StatCategories
alter table sub_categories
   add constraint fk_sub_cat_category foreign key ( category_id )
      references stat_categories ( id );

-- SubCategoryMetrics -> SubCategories
alter table sub_category_metrics
   add constraint fk_scm_sub_category foreign key ( sub_category_id )
      references sub_categories ( id );

-- SubCategoryMetrics -> StatMetrics
alter table sub_category_metrics
   add constraint fk_scm_metric foreign key ( metric_id )
      references stat_metrics ( id );

-- StatRecords -> SubCategoryMetrics
alter table stat_records
   add constraint fk_stat_rec_scm foreign key ( sub_category_metric_id )
      references sub_category_metrics ( id );