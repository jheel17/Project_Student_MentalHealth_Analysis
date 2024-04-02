-- Analyzing the Impact of Japanese Proficiency

SELECT 
    japanese_cate AS Japanese_Proficiency,
    ROUND(AVG(ToDep), 2) AS Avg_Dep, 
    ROUND(AVG(ToSC), 2) AS Avg_Social_Connect, 
    ROUND(AVG(ToAS), 2) AS Avg_Acc_Stress
FROM 
    student_mh
GROUP BY 
    japanese_cate
ORDER BY 
    CASE japanese_cate
        WHEN 'High' THEN 1 
        WHEN 'Medium' THEN 2 
        ELSE 3 
    END;
