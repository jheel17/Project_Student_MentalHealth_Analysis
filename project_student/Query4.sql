-- How do region of origin, length of stay, acculturative stress, and social connectedness impact the 
-- mental health (specifically depression) of international students?"
-- Analyze the impact of stay on the mental health of international students, based on their region of origin

SELECT 
    region, 
    ROUND(AVG(todep), 2) AS Avg_Dep, 
    ROUND(AVG(CASE WHEN stay <= 2 THEN todep ELSE NULL END), 2) AS Avg_Dep_Short_Stay,
    ROUND(AVG(CASE WHEN stay > 2 THEN todep ELSE NULL END), 2) AS Avg_Dep_Long_Stay,
    ROUND(AVG(toas), 2) AS Avg_Acc_Stress,
    ROUND(AVG(tosc), 2) AS Avg_Social_Connect
FROM 
    student_mh
WHERE 
    inter_dom = 'Inter'
GROUP BY 
    region
ORDER BY 
    Avg_Dep DESC;
