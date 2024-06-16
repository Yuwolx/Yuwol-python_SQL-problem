-- 코드를 입력하세요
SELECT ANIMAL_TYPE, COUNT(*) AS count
FROM animal_ins
WHERE ANIMAL_TYPE LIKE 'Cat' or animal_type like 'Dog'
GROUP BY ANIMAL_TYPE
ORDER BY 1