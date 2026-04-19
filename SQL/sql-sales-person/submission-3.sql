WITH CTE AS
(
SELECT DISTINCT s.sales_id as crim_seller_id
FROM sales_person as s 
LEFT OUTER JOIN orders as o 
ON s.sales_id = o.sales_id 
LEFT OUTER JOIN company as c 
ON o.com_id = c.com_id
WHERE c.name = 'CRIMSON'
)
SELECT name
FROM sales_person
WHERE sales_id NOT IN (SELECT crim_seller_id FROM CTE)