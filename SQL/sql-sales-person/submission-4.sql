WITH CTE AS
(
SELECT s.name
FROM sales_person AS s
 JOIN orders AS o
ON s.sales_id = o.sales_id
 JOIN company AS c
ON c.com_id = o.com_id 
AND c.name = 'CRIMSON'
)
SELECT name 
FROM sales_person 
WHERE name NOT IN (SELECT name from CTE)


