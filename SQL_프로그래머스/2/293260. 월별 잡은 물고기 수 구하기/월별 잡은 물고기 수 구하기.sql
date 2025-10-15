-- 코드를 작성해주세요
SELECT COUNT(*) as FISH_COUNT,
    month(time) as MONTH
FROM fish_info
GROUP BY 2
ORDER BY 2