-- 코드를 입력하세요
SELECT distinct C.CAR_ID
    FROM CAR_RENTAL_COMPANY_CAR C
    JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H
    ON C.car_id = H.car_id
    WHERE car_type = '세단'
    AND start_date like '2022-10%'
ORDER BY 1 desc
