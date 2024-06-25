-- 코드를 입력하세요
SELECT HISTORY_ID, CAR_ID, 
    date_format(start_date,'%Y-%m-%d') as START_DATE,
    date_format(end_date,'%Y-%m-%d') as END_DATE,
    case 
    when datediff(date_format(end_date,'%Y-%m-%d'),
                  date_format(start_date,'%Y-%m-%d')) >= 29 then '장기 대여'
    else '단기 대여' end as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE start_date like '2022-09%'
ORDER BY 1 DESC;