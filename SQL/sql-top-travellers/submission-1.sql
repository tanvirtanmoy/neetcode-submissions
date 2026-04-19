-- Write your query below
SELECT u.name, COALESCE(SUM(distance),0) as travelled_distance
FROM users AS u
LEFT OUTER JOIN rides AS r
ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC, u.name ASC
