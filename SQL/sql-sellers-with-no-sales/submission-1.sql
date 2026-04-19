-- Write your query below
WITH recent_seller as
(
SELECT seller_name as recent_seller_name, s.seller_id as recent_seller_id
FROM customer as c
LEFT OUTER JOIN orders as o 
ON c.customer_id = o.customer_id 
LEFT OUTER JOIN seller as s 
ON o.seller_id = s.seller_id
WHERE EXTRACT(year FROM sale_date) = 2020
)
SELECT seller_name
FROM seller as s
Left OUTER JOIN recent_seller as rs
ON s.seller_id = rs.recent_seller_id
WHERE rs.recent_seller_id is null
ORDER BY seller_name ASC