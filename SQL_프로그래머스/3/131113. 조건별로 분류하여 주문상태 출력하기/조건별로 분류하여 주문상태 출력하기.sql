-- 코드를 입력하세요
SELECT ORDER_ID, PRODUCT_ID, date_format(OUT_DATE,'%Y-%m-%d') as OUT_DATE,
    case when out_date <= '2022-05-01' THEN '출고완료'
        when out_date > '2022-05-01' THEN '출고대기'
        ELSE '출고미정' end as '출고여부'
FROM FOOD_ORDER
ORDER BY 1