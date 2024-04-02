-- Compare Level of ToDep, ToSC & ToAS between International (Inter) and Domestic (Dom) Students
-- Total score of depression measured by PHQ-9 - todep
-- Total social connectedness measured by SCS- tosc
-- Total score of Acculturative Stress- toas

SELECT 
       inter_dom, 
       MIN(todep) AS Min_Avg_Dep, 
       MAX(todep) AS Max_Avg_Dep, 
       ROUND(AVG(todep), 2) AS Avg_Dep, 
       MIN(tosc) AS Min_Social_Connect, 
       MAX(tosc) AS Max_Social_Connect, 
       ROUND(AVG(tosc), 2) AS Avg_Social_Connect, 
       MIN(toas) AS Min_Acc_Stress, 
       MAX(toas) AS Max_Acc_Stress, 
       ROUND(AVG(toas), 2) AS Avg_Acc_Stress
FROM student_mh
WHERE inter_dom IN ('Inter', 'Dom')
GROUP BY inter_dom;