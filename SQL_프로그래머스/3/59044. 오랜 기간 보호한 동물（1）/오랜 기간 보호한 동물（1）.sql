-- 코드를 입력하세요
SELECT I.NAME, I.DATETIME
FROM animal_ins I 
LEFT JOIN animal_outs O
ON I.animal_id = O.animal_ID
WHERE O.animal_type is null
ORDER BY 2
LIMIT 3