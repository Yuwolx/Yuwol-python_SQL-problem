-- 코드를 작성해주세요
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM developer_infos
WHERE SKILL_1 = 'Python' 
OR SKILL_2 = 'Python' 
OR SKILL_3 = 'Python' 
ORDER BY 1