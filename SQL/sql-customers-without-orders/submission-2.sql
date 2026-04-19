-- Write your query below
SELECT name 
FROM customers AS c
LEFT OUTER JOIN orders AS o
ON c.id = o.customer_id
WHERE customer_id IS NULL 
GROUP BY c.id

