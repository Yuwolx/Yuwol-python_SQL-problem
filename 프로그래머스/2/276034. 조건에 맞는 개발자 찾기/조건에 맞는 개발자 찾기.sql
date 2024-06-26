-- 코드를 작성해주세요
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE (SKILL_CODE & (SELECT SUM(code) FROM skillcodes
                    WHERE name in ('Python','C#'))
) >= 1
ORDER BY id