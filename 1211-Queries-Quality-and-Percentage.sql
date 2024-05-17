SELECT query_name, ROUND(AVG(rating/position),2) AS quality , ROUND(SUM(IF(rating < 3 , 1 , 0)) / count(query_name) * 100,2) AS poor_query_percentage
from Queries
where query_name is not null
group by query_name;