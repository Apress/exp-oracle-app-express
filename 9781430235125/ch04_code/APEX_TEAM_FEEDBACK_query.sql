SELECT feedback_number "Nr."
,      feedback_id     "Follow up"
,      feedback
,      CASE           
       WHEN feedback_type = 1 THEN 'General Comment'           
       WHEN feedback_type = 2 THEN 'Enhancement Requested'           
       WHEN feedback_type = 3 THEN 'Bug'        
       END           "Type"
,      CASE           
       WHEN feedback_status = 0 THEN 'No Status'           
       WHEN feedback_status = 1 THEN 'Acknowledged'           
       WHEN feedback_status = 2 THEN 'Additional Info. Requested'           
       WHEN feedback_status = 3 THEN 'Open'           
       WHEN feedback_status = 4 THEN 'Closed'        
       END           "Status"
,      page_name     "Page"
,      public_response "Response"
FROM   apex_team_feedback 
WHERE  application_id = :APP_ID
ORDER BY updated_on DESC
