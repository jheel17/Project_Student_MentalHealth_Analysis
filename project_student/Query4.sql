
/*
This SQL query examines the mental health of international students, focusing on depression and how it 
may vary by region of origin, length of stay, acculturative stress, and social connectedness. 
It calculates the average depression score overall, as well as segmented into short (2 years or less) 
and long stays (more than 2 years). Additionally, it provides average scores for acculturative stress 
and social connectedness for each region. The results are grouped by region and sorted to show regions 
with the highest average depression scores first, aiming to reveal regional patterns and the influence 
of time spent abroad on student mental health.
*/

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
