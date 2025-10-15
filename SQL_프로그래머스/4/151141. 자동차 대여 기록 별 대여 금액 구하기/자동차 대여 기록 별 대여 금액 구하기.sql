-- 코드를 입력하세요
SELECT HISTORY_ID,
    CASE WHEN datediff(end_date,start_date)+1 >= 90
            THEN FLOOR((datediff(end_date,start_date)+1)*DAILY_FEE*
             (SELECT 1-discount_rate/100 FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
             WHERE car_type = '트럭' and duration_type = '90일 이상')
                      )
        WHEN datediff(end_date,start_date)+1 >= 30
            THEN FLOOR((datediff(end_date,start_date)+1)*DAILY_FEE*
             (SELECT 1-discount_rate/100 FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
             WHERE car_type = '트럭' and duration_type = '30일 이상')
                      )
        WHEN datediff(end_date,start_date)+1 >= 7
            THEN FLOOR((datediff(end_date,start_date)+1)*DAILY_FEE*
               (SELECT 1-discount_rate/100 FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
             WHERE car_type = '트럭' and duration_type = '7일 이상')
                      )
            ELSE FLOOR((datediff(end_date,start_date)+1)*DAILY_FEE)
            END as FEE
FROM CAR_RENTAL_COMPANY_CAR C
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H
ON C.CAR_ID = H.CAR_ID
WHERE C.CAR_TYPE = '트럭'            
ORDER BY 2 DESC, 1 dESC