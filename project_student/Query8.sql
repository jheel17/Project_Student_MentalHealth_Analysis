-- Analyze the impact of student gender (Male or Female) on their depression scores

SELECT 
    gender, 
    ROUND(AVG(todep), 2)AS Avg_Dep, 
    ROUND(AVG(tosc), 2) AS Avg_Social_Connect, 
    ROUND(AVG(toas), 2) AS Avg_Acc_Stress
FROM 
    student_mh
GROUP BY 
    gender
ORDER BY 
    gender;
