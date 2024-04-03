
/*
These SQL queries are designed to analyze how language proficiency (Japanese and English) relates to 
mental health outcomes among students. They calculate the average depression, social connectivity, 
and acculturative stress scores for different levels of language proficiency. 
The first query sorts Japanese proficiency categories, and the second sorts English proficiency 
categories, both from high to low. This structured ordering helps to discern if higher language skills 
correlate with better mental health indicators, providing insights into the role language plays in 
student well-being.
*/

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
