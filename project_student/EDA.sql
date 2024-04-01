-- Count the number of records in the data
SELECT COUNT (*) AS total_records
FROM student_mh;

-- Count the number of international and domestic students

SELECT inter_dom, COUNT(inter_dom) AS count_inter_dom
FROM student_mh
GROUP BY inter_dom;


-- Identify what Region international students are from

SELECT region, COUNT(inter_dom) as count_inter_dom
FROM student_mh
WHERE inter_dom = 'Inter'
GROUP BY region;

-- Find out the basic summary statistics of the diagnostic tests for all students

SELECT 
       MIN(todep) AS min_phq, 
       MAX(todep) AS max_phq, 
       ROUND(AVG(todep), 2) AS avg_phq, 
       MIN(tosc) AS min_scs, 
       MAX(tosc) AS max_scs, 
       ROUND(AVG(tosc), 2) AS avg_scs, 
       MIN(toas) AS min_as, 
       MAX(toas) AS max_as, 
       ROUND(AVG(toas), 2) AS avg_as
FROM student_mh;


-- Write a query that looks at the statistics of each student group excluding the null values
SELECT 
       inter_dom, 
       MIN(todep) AS min_phq, 
       MAX(todep) AS max_phq, 
       ROUND(AVG(todep), 2) AS avg_phq, 
       MIN(tosc) AS min_scs, 
       MAX(tosc) AS max_scs, 
       ROUND(AVG(tosc), 2) AS avg_scs, 
       MIN(toas) AS min_as, 
       MAX(toas) AS max_as, 
       ROUND(AVG(toas), 2) AS avg_as
FROM student_mh
WHERE inter_dom IN ('Inter', 'Dom')
GROUP BY inter_dom;