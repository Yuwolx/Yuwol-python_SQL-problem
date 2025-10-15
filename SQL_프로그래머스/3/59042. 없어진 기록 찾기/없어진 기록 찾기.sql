-- 코드를 입력하세요
SELECT O.ANIMAL_ID, O.NAME
FROM animal_outs O
LEFT JOIN animal_ins I
ON O.animal_id = I.animal_id
WHERE I.datetime is null