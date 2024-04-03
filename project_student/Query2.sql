
/*
This SQL query's purpose is to analyze the correlation between the length of stay in a foreign country 
and the levels of depression among international students. It aims to understand how students' 
mental health, specifically depression, is associated with the duration of their exposure to and 
integration into a new culture. By averaging depression scores (avg_dep), social connectedness 
(average_so), and acculturative stress (avg_acc_stress), the query seeks to reveal trends over 
different lengths of stay (ranging from 1 year to more than 10 years).

*/
SELECT 
    stay, 
    ROUND(AVG(todep), 2) AS Avg_Dep, 
    ROUND(AVG(tosc), 2) AS Avg_Social_Connect, 
    ROUND(AVG(toas), 2) AS Avg_Acc_Stress
FROM 
    student_mh
WHERE 
    inter_dom = 'Inter'
GROUP BY 
    stay
ORDER BY 
    stay;
