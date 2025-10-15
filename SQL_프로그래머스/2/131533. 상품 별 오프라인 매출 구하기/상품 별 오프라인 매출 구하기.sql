-- 코드를 입력하세요
SELECT PRODUCT_CODE, SUM(price*sales_amount) as SALES
FROM product P
JOIN offline_sale S
ON P.product_id = S.product_id
GROUP BY 1
ORDER BY 2 DESC, 1