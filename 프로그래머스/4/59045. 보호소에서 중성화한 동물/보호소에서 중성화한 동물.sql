-- 코드를 입력하세요
SELECT I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
FROM animal_ins I
JOIN animal_outs O
ON I.animal_id = O.animal_id
WHERE I.SEX_UPON_INTAKE != O.SEX_UPON_OUTCOME
ORDER BY 1