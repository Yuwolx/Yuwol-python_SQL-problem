-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME
FROM(SELECT i.ANIMAL_ID, I.NAME, datediff(o.datetime,i.datetime) as lon
FROM animal_ins i
join animal_outs o
ON i.animal_id = o.animal_id) a
ORDER BY lon DESC
LIMIT 2