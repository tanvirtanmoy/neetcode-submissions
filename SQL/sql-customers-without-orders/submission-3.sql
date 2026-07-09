-- Write your query below
-- There can be customers who has never placed an order
-- We would highly likely need to use left (outer) join with customer table on the left
SELECT name
FROM customers as c
LEFT OUTER JOIN orders as o 
ON c.id = o.customer_id
WHERE customer_id IS NULL



