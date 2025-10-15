-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME
FROM animal_ins
WHERE NAME like '%el%'
    AND animal_type = 'dog'
order by 2