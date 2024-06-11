-- 코드를 입력하세요
SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS as A
JOIN ANIMAL_OUTS as B
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.datetime > B.datetime
ORDER BY A.datetime