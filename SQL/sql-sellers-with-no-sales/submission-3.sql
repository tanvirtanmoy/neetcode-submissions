-- Write your query below
SELECT  s.seller_name
FROM seller AS s
LEFT OUTER JOIN orders AS o 
ON s.seller_id = o.seller_id
AND EXTRACT(YEAR FROM sale_date) = 2020
WHERE o.seller_id IS NULL
ORDER BY  s.seller_name ASC
