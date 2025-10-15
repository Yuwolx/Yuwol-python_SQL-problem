-- 코드를 입력하세요
SELECT CATEGORY, count(*) as PRODUCTS
FROM(SELECT LEFT(product_Code,2) as CATEGORY
FROM product) a
GROUP BY 1
ORDER BY 1