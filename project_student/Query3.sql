/*
This SQL query is designed to analyze average depression levels among international students, 
categorized by their academic level and the length of their stay. It groups the data by both academic 
level and length of stay, then orders the results by these categories. The aim is to understand if 
there's a pattern in depression levels based on how advanced a student is in their academic journey and 
how long they have been staying in a foreign country.

*/

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
