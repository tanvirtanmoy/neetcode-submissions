-- Write your query below
SELECT *, s.name
FROM sales_person as s 
LEFT OUTER JOIN orders as o 
ON s.sales_id = o.sales_id 
LEFT OUTER JOIN company as c
ON o.com_id = c.com_id
