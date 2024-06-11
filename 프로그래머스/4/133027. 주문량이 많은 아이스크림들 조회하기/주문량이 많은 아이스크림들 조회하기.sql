-- 코드를 입력하세요
SELECT FLAVOR
FROM(SELECT *
FROM first_half
union
SELECT *
FROM july) as A
GROUP BY FLAVOR
ORDER BY SUM(total_order) DESC
LIMIT 3