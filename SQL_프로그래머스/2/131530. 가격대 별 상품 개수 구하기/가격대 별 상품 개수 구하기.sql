-- 코드를 입력하세요
SELECT CASE WHEN price < 10000 then '0'
            WHEN price < 20000 then '10000'
            when price < 30000 then '20000'
            when price < 40000 then '30000'
            when price < 50000 then '40000'
            when price < 60000 then '50000'
            when price < 70000 then '60000'
            when price < 80000 then '70000'
            when price < 90000 then '80000'
            when price < 100000 then '90000'
            else '110000' end as PRICE_GROUP,
            COUNT(*) as PRODUCTS
FROM PRODUCT
GROUP BY 1
ORDER BY 1