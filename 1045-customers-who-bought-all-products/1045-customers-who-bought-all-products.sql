SELECT  customer_id
FROM(SELECT customer_id, product_key, COUNT(*)
    FROM customer
    WHERE product_key IN (SELECT * FROM product)
    GROUP BY customer_id, product_key
    ORDER BY customer_id, product_key) alpha
GROUP BY customer_id
HAVING COUNT(product_key) = (SELECT COUNT(*) FROM product)

