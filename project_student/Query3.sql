-- Analyzing Depression Levels by Academic Level and Length of Stay

SELECT 
    academic, 
    stay_cate AS length_of_stay, 
    ROUND(AVG(todep),2) AS Avg_Dep
FROM
    student_mh
WHERE 
    inter_dom = 'Inter'
GROUP BY 
    academic, stay_cate
ORDER BY 
    academic, stay_cate;
