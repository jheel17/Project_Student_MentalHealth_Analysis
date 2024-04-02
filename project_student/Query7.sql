
-- Analyze the impact of the regions where students originate (such as Japan (JAP), 
-- East Asia excluding Japan (EA), South Asia (SA), South East Asia (SEA), or other regions (Others)) 
-- on their depression scores.
SELECT 
    region, 
    ROUND(AVG(todep), 2) AS Avg_Dep, 
    ROUND(AVG(tosc), 2) AS Avg_Social_Connect, 
    ROUND(AVG(toas), 2) AS Avg_Acc_Stress
FROM 
    student_mh
GROUP BY 
    region
ORDER BY 
    Avg_Dep DESC, Avg_Acc_Stress DESC;
