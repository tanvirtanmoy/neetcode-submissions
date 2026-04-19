-- Write your query below
SELECT NAME 
FROM customers AS C
LEFT OUTER JOIN orders AS O
ON C.id = o.customer_id
WHERE o.customer_id IS NULL
