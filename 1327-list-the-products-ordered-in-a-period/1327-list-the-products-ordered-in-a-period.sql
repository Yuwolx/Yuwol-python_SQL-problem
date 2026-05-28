# Write your MySQL query statement below
SELECT product_name,  SUM(unit) as unit
FROM orders o
LEFT JOIN products p
ON o.product_id = p.product_id
WHERE order_date like '2020-02%'
GROUP BY o.product_id
HAVING sum(unit) >= 100
