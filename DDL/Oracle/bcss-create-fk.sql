-- ============================================================================
-- BCSS Stats - Oracle Foreign Keys (Staging)
-- These enforce referential integrity between the stats tables.
-- No FKs to Users/Locations since those are not replicated.
-- ============================================================================

-- StatCategories -> StatGroups
ALTER TABLE STAT_CATEGORIES
    ADD CONSTRAINT FK_STAT_CAT_GROUP
    FOREIGN KEY (GROUP_ID) REFERENCES STAT_GROUPS (ID);

-- SubCategories -> StatCategories
ALTER TABLE SUB_CATEGORIES
    ADD CONSTRAINT FK_SUB_CAT_CATEGORY
    FOREIGN KEY (CATEGORY_ID) REFERENCES STAT_CATEGORIES (ID);

-- SubCategoryMetrics -> SubCategories
ALTER TABLE SUB_CATEGORY_METRICS
    ADD CONSTRAINT FK_SCM_SUB_CATEGORY
    FOREIGN KEY (SUB_CATEGORY_ID) REFERENCES SUB_CATEGORIES (ID);

-- SubCategoryMetrics -> StatMetrics
ALTER TABLE SUB_CATEGORY_METRICS
    ADD CONSTRAINT FK_SCM_METRIC
    FOREIGN KEY (METRIC_ID) REFERENCES STAT_METRICS (ID);

-- StatRecords -> SubCategoryMetrics
ALTER TABLE STAT_RECORDS
    ADD CONSTRAINT FK_STAT_REC_SCM
    FOREIGN KEY (SUB_CATEGORY_METRIC_ID) REFERENCES SUB_CATEGORY_METRICS (ID);
