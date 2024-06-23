-- 코드를 입력하세요
SELECT CAR_ID, CASE Max(AVAILABILITY)
                WHEN 0 THEN '대여 가능'
                ELSE '대여중'
                END AS AVAILABILITY
FROM (SELECT CAR_ID, CASE WHEN 
        start_date > '2022-10-16'
        OR end_date < '2022-10-16'
        THEN 0
        ELSE 1
        END AS AVAILABILITY
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
     ) A
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;