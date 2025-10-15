-- 코드를 입력하세요
SELECT COUNT(*) AS USERS
FROM user_info
WHERE YEAR(JOined) = 2021
AND age between 20 and 29