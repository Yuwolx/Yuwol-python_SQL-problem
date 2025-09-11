-- 코드를 입력하세요

WITH RECURSIVE hours as (
SELECT 0 as time
UNION ALL
SELECT time + 1 FROM hours WHERE time < 23
) 

SELECT time as HOUR, IFNULL(COUNT,0) as COUNT
FROM hours
LEFT JOIN (SELECT HOUR(datetime) as ho, count(*) as COUNT
    FROM animal_outs
    GROUP BY HOUR(datetime)) dd
ON hours.time = dd.ho
ORDER BY HOUR