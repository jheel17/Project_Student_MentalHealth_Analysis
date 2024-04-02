-- Examine the correlation between the length of stay and depression levels among international students.

SELECT 
    stay, 
    ROUND(AVG(todep), 2) AS Avg_Dep, 
    ROUND(AVG(tosc), 2) AS Avg_Social_Connect, 
    ROUND(AVG(toas), 2) AS Avg_Acc_Stress
FROM 
    student_mh
WHERE 
    inter_dom = 'Inter'
GROUP BY 
    stay
ORDER BY 
    stay;
