-- 코드를 작성해주세요
SELECT ID, EMAIL, FiRST_NAME, LAST_NAME
FROM DEVELOPERS
 WHERE skill_code & (SELECT SUM(CODE) FROM skillcodes
                        WHERE NAME ='JavaScript'
                        ) >= 1
            OR
            skill_code & (SELECT SUM(CODE) FROM skillcodes
                        WHERE NAME = 'React'
                        ) >= 1
            OR
            skill_code & (SELECT SUM(CODE) FROM skillcodes
                        WHERE NAME = 'Vue'
                        ) >= 1
ORDER BY 1