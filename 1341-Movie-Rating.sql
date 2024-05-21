(SELECT name AS results
FROM MovieRating mr
JOIN Users u ON mr.user_id = u.user_id
GROUP BY name
ORDER BY COUNT(*) DESC, name
LIMIT 1)
UNION ALL
(SELECT title AS results
FROM MovieRating mr
JOIN Movies m ON mr.movie_id = m.movie_id
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-28'
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1);
