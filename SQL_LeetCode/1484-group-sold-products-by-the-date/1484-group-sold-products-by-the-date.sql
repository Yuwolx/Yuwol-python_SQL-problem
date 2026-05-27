# Write your MySQL query statement below
SELECT sell_date, COUNT(distinct product) as num_sold, 
        GROUP_CONCAT(distinct product ORDER BY product ASC) as products
FROM activities
GROUP BY sell_date