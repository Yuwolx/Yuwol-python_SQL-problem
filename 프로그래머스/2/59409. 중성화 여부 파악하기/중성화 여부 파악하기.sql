-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME,
    CASE 
    WHEN SEX_UPON_INTAKE like 'Neutered%' THEN 'O'
    WHEN SEX_UPON_INTAKE like 'Spayed%' THEN 'O'
    ELSE 'X'
    END AS '중성화'
FROM animal_ins