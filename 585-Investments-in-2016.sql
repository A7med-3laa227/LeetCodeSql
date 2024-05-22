SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM 
(
    SELECT tiv_2016,
    COUNT(*) OVER (PARTITION BY tiv_2015) AS the_same_value,
    COUNT(*) OVER (PARTITION BY lat, lon) AS not_located
    FROM Insurance

) AS subquery
WHERE the_same_value > 1 AND not_located = 1
