-- Write your query below
SELECT name, COALESCE(SUM(distance),0) as travelled_distance
FROM users as u 
LEFT OUTER JOIN rides as r
ON u.id = r.user_id
GROUP BY name
ORDER BY travelled_distance DESC, name ASC