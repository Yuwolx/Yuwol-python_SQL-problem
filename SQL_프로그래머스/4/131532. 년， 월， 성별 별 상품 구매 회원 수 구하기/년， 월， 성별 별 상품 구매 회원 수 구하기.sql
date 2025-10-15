-- 코드를 입력하세요
SELECT YEAR(sales_date) as YEAR,
    month(sales_date) as MONTH,
    GENDER,
    COUNT(distinct u.user_id) as USERS
FROM user_info u
JOIN online_sale o
ON u.user_id = o.user_id
WHERE gender is not null
GROUP BY 1,2,3
ORDER BY 1,2,3