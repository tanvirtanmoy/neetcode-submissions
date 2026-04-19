-- sales_person, orders , company
WITH CTE AS
(
SELECT s.sales_id, s.name
FROM sales_person AS s
JOIN orders AS o
ON s.sales_id = o.sales_id 
JOIN company AS c
ON o.com_id = c.com_id
AND c.name = 'CRIMSON'
)
SELECT name
FROM sales_person AS s
WHERE NOT EXISTS (
SELECT 1
FROM CTE
WHERE s.sales_id = CTE.sales_id
)
