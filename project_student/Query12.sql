
-- To find the proportions of both international (Inter) and domestic (Dom) students willing to 
-- seek help from various sources when they encounter emotional difficulties, 

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





