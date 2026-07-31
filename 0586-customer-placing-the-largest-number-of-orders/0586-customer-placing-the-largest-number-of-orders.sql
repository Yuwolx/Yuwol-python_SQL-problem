# Write your MySQL query statement below
SELECT customer_number
FROM(SELECT customer_number, COUNT(customer_number)
    FROM orders
    GROUP BY customer_number
    ORDER BY COUNT(customer_number) DESC ) alpha
LIMIT 1 