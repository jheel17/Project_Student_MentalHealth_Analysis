
/*
The purpose of this query is to determine the percentages of international (Inter) and domestic (Dom) 
students who are willing to seek help from different sources during emotional distress. 
It computes the proportion of students who say 'Yes' to relying on a partner, friends, parents, 
professionals, phone helplines, doctors, religion, solitude, the internet, and other unspecified sources. 
The results are aggregated by student type to understand the help-seeking preferences and tendencies 
within each group, which could inform the development of support services tailored to these preferences.
 The data is ordered to compare international versus domestic students directly.
*/

SELECT 
    inter_dom,
    ROUND((SUM(CASE WHEN Partner_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Partner_Percentage,
    ROUND((SUM(CASE WHEN Friends_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Friends_Percentage,
    ROUND((SUM(CASE WHEN Parents_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Parents_Percentage,
    ROUND((SUM(CASE WHEN Professional_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Professional_Percentage,
    ROUND((SUM(CASE WHEN Phone_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Phone_Percentage,
    ROUND((SUM(CASE WHEN Doctor_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Doctor_Percentage,
    ROUND((SUM(CASE WHEN religion_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Religion_Percentage,
    ROUND((SUM(CASE WHEN Alone_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Alone_Percentage,
    ROUND((SUM(CASE WHEN Internet_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Internet_Percentage,
    ROUND((SUM(CASE WHEN Others_bi = 'Yes' THEN 1 ELSE 0 END)::decimal / COUNT(*)) * 100, 2) AS Others_Percentage
FROM 
    student_mh
GROUP BY 
    inter_dom
ORDER BY 
    inter_dom;





