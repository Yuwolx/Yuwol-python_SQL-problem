-- 코드를 입력하세요
SELECT year(sales_date) as YEAR,
    month(sales_date) as MONTH,
    COUNT(distinct I.user_id) as PURCHASED_USERS,
    ROUND(COUNT(distinct I.user_id)/(SELECT COUNT(DISTINCT I.USER_ID)
                             FROM user_info I
                             WHERE joined like '2021%'),1) as PUCHASED_RATIO
    
FROM user_info I
JOIN online_sale S
ON I.user_id = S.user_id
WHERE joined like '2021%'
GROUP BY 1,2
ORDER BY 1,2 