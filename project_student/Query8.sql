/*
The purpose of this query is to assess and compare the average levels of perceived discrimination, 
homesickness, perceived hatred, fear, culture shock, and guilt among international (Inter) and domestic 
(Dom) students. It aims to quantify the average intensity of these feelings within each group, possibly
 to identify specific challenges faced by international students as compared to their domestic 
 counterparts and to tailor support services accordingly. The results are grouped and ordered by the 
 student type to facilitate a direct comparison.
*/

SELECT 
    inter_dom, 
    ROUND(AVG(APD), 2) AS Avg_Perc_Discrimination, 
    ROUND(AVG(AHome), 2) AS Avg_Homesickness, 
    ROUND(AVG(APH), 2) AS Avg_Perc_Hatred, 
    ROUND(AVG(AFear), 2) AS Avg_Fear, 
    ROUND(AVG(ACS), 2) AS Avg_Culture_Shock, 
    ROUND(AVG(AGuilt), 2) AS Avg_Guilt
FROM 
    student_mh
GROUP BY 
    inter_dom
ORDER BY 
    inter_dom;
