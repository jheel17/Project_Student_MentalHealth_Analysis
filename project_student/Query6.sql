-- Analyze the impact of student gender (Male or Female) on their depression scores

/*
This query is designed to evaluate whether there's a difference in depression scores, 
social connectivity, and acculturative stress levels between male and female students. 
It calculates the average scores for each gender to investigate any gender-related trends in 
mental health outcomes.
*/

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
