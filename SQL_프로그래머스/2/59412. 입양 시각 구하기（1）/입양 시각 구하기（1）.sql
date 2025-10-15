-- 코드를 입력하세요
SELECT HOUR(datetime) as HOUR, COUNT(*) as COUNT
FROM animal_outs
WHERE HOUR(datetime) between 9 and 19
GROUP BY 1
ORDER BY 1