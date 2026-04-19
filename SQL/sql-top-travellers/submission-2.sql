-- Write your query below
SELECT name, COALESCE(SUM(distance),0) AS travelled_distance
FROM users AS u
LEFT OUTER JOIN rides AS r 
ON u.id = r.user_id 
GROUP BY name
ORDER BY travelled_distance DESC