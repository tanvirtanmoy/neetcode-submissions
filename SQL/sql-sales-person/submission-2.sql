-- Write your query below
WITH CTE AS
(
SELECT DISTINCT s.name as crim_seller
FROM sales_person as s 
LEFT OUTER JOIN orders as o 
ON s.sales_id = o.sales_id 
LEFT OUTER JOIN company as c 
ON o.com_id = c.com_id
WHERE c.name = 'CRIMSON'
)
SELECT name
FROM sales_person
WHERE name NOT IN (SELECT crim_seller FROM CTE)



