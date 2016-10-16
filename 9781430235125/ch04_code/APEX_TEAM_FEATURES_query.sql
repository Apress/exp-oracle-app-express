SELECT  NULL                    link
,       FEATURE_NAME            task_name
,       FEATURE_ID              task_id
,       PARENT_FEATURE_ID       parent_id
,       NVL(START_DATE,SYSDATE) actual_start
,       NVL(DUE_DATE,SYSDATE)   actual_end
,       FEATURE_STATUS          progress
FROM APEX_TEAM_FEATURES 
START WITH PARENT_FEATURE_ID IS NULL
CONNECT BY PRIOR FEATURE_ID = PARENT_FEATURE_ID
