-- 코드를 입력하세요
SELECT CART_ID
FROM(SELECT CART_ID, GROUP_CONCAT(name SEPARATOR ', ') as cart
FROM CART_PRODUCTS
GROUP BY 1) a
WHERE cart like '%Milk%'
    and cart like '%Yogurt%'
ORDER BY 1