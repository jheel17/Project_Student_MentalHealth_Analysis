-- Analyze how the age of international students impacts their depression score.

SELECT 
    age, 
    ROUND(AVG(todep), 2) AS Avg_Dep, 
    ROUND(AVG(tosc), 2) AS Avg_Social_Connect, 
    ROUND(AVG(toas), 2) AS Avg_Acc_Stress
FROM 
    student_mh
WHERE 
    inter_dom = 'Inter'
GROUP BY 
    age
ORDER BY 
    age;
