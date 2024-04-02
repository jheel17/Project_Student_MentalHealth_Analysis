-- evaluate the measures of perceived discrimination (APD), homesickness (AHome), 
-- perceived hatred (APH), fear (AFear), culture shock (ACS), and guilt (AGuilt) 
-- for both international (Inter) and domestic (Dom) students.

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
