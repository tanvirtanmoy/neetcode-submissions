-- Write your query below
-- there should be a sum and group by 
SELECT name, COALESCE(sum(distance),0) AS travelled_distance
FROM users AS u 
LEFT OUTER JOIN rides AS r
ON u.id = r.user_id
GROUP BY name
ORDER BY travelled_distance DESC, name ASC
