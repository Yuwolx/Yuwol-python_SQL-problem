WITH type_fee AS (SELECT * FROM CAR_RENTAL_COMPANY_CAR WHERE car_type IN ('세단', 'SUV')),

id_date AS (SELECT car_id#, MAX(end_date) AS end_date
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY car_id 
HAVING MAX(end_date) < '2022-11-01'
AND MAX(start_date) < '2022-11-01'),

dis_rate AS (SELECT * FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
WHERE CAR_TYPE IN ('세단', 'SUV') AND duration_type LIKE '30%')


SELECT id_date.CAR_ID, dis_rate.CAR_TYPE AS CAR_TYPE, ROUND(daily_fee*(1-(discount_rate/100))*30,0) AS FEE
FROM type_fee
JOIN id_date ON type_fee.car_id = id_date.car_id
LEFT JOIN dis_rate ON type_fee.CAR_TYPE = dis_rate.CAR_TYPE
WHERE ROUND(daily_fee*(1-(discount_rate/100))*30,0) >= 500000 AND ROUND(daily_fee*(1-(discount_rate/100))*30,0) < 2000000
ORDER BY 3 DESC;
