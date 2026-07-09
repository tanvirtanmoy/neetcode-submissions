-- Write your query below

 WITH CTE_apples AS
 (
 SELECT sale_date, sum(sold_num) as total_apple_sold_per_day
 FROM sales
 GROUP BY sale_date, fruit
 HAVING fruit = 'apples'
 ), 
 CTE_orranges AS
 (
 SELECT sale_date, sum(sold_num) as total_oranges_sold_per_day
 FROM sales
 GROUP BY sale_date, fruit
 HAVING fruit = 'oranges'
 )
 SELECT ca.sale_date, (ca.total_apple_sold_per_day - co.total_oranges_sold_per_day) AS diff
 FROM CTE_apples AS ca
 JOIN CTE_orranges AS co
 ON ca.sale_date = co.sale_date
 ORDER BY ca.sale_date


