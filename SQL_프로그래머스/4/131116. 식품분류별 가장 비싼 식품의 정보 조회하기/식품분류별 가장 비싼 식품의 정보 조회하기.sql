-- 코드를 입력하세요
SELECT CATEGORY, price as MAX_PRICE, PRODUCT_NAME
FROM(SELECT CATEGORY, price, PRODUCT_NAME, 
    row_number() over(partition by category order by price DESC) as rnk
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자','국','김치','식용유')) a
WHERE rnk = '1'
ORDER BY 2 DESC