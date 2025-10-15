-- 코드를 작성해주세요
# A = Front end, Python -> 256 & (16 or 2048 or 8192)
# B = C# -> 1024
# C = 16 or 2048 or 8192, back x

SELECT *
FROM(SELECT 
    CASE 
    WHEN ((SKILL_CODE & (SELECT code FROM skillcodes WHERE NAME = "Python")) != 0)
        AND (SKILL_CODE & (SELECT SUM(code) FROM skillcodes WHERE category = "Front End")) != 0 THEN 'A'
    WHEN (SKILL_CODE & (SELECT code FROM skillcodes WHERE NAME = "C#")) != 0 THEN 'B'
    WHEN 
    # ((SKILL_CODE & (SELECT SUM(code) FROM skillcodes WHERE category = "Back End")) = 0)  AND 
     ((SKILL_CODE & (SELECT SUM(code) FROM skillcodes WHERE category = "Front End")) != 0) THEN 'C'
    END AS GRADE,
    ID, EMAIL
FROM developers) alpha
WHERE GRADE is not null
ORDER BY GRADE, ID