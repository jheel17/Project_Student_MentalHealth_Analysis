
--Analyzing the Impact of English Proficiency

SELECT 
    english_cate AS English_Proficiency,
    ROUND(AVG(ToDep), 2) AS Avg_Dep, 
    ROUND(AVG(ToSC), 2) AS Avg_Social_Connect, 
    ROUND(AVG(ToAS), 2) AS Avg_Acc_Stress
FROM 
    student_mh
GROUP BY 
    english_cate
ORDER BY 
    CASE english_cate
        WHEN 'High' THEN 1 
        WHEN 'Medium' THEN 2 
        ELSE 3 
    END;
