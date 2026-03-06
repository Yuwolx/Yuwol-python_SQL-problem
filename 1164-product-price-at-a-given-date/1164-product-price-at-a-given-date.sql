# Write your MySQL query statement below

-- SELECT b1.product_id,
--     CASE WHEN
--         new_price IS NOT NULL THEN new_price
--         ELSE 10 END AS price
-- FROM(SELECT distinct product_id 
--     FROM products) b1
-- LEFT JOIN 
--     (SELECT a1.product_id, new_price 
--     FROM products a1
--     JOIN 
--         (SELECT product_id, max(change_date) as mxd
--         FROM Products  a1
--         WHERE change_date  <= '2019-08-16'
--         GROUP BY product_id) as a2
--     ON a1.product_id = a2.product_id 
--         AND a1.change_date = mxd) b2
-- ON b1.product_id = b2.product_id 
-- ORDER BY price DESC

SELECT product_id,
    COALESCE(
        (SELECT new_price
        FROM products p2
        WHERE p1.product_id = p2.product_id
            AND change_date  <= '2019-08-16'
        ORDER BY change_date DESC
        LIMIT 1)
    , 10) as price
FROM products p1
GROUP BY product_id
ORDER BY price DESC