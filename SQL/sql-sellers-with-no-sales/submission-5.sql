-- Write your query below
SELECT seller_name
FROM seller AS s
LEFT OUTER JOIN orders AS o
ON s.seller_id = o.seller_id 
AND EXTRACT(YEAR from sale_date) = 2020
WHERE o.seller_id is null
ORDER BY seller_name ASC