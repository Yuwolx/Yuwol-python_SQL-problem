-- 코드를 작성해주세요
SELECT E.EMP_NO, EMP_NAME,
    CASE WHEN AVG(score) >= 96 THEN 'S'
        WHEN AVG(score) >=90 THEN 'A'
        WHEN AVG(score) >= 80 THEN 'B'
        WHEN AVG(score) < 80 THEN 'C' 
        end AS GRADE,
    CASE WHEN AVG(score) >= 96 THEN sal*0.2
        WHEN AVG(score) >= 90 THEN sal*0.15
        WHEN AVG(score) >= 80 THEN sal*0.1
        WHEN AVG(score) < 80 THEN 0 
        end AS BONUS
FROM HR_DEPARTMENT D
JOIN HR_EMPLOYEES E ON D.dept_id = E.dept_id
JOIN HR_GRADE G ON E.emp_no = G.emp_no
GROUP BY EMP_NO, EMP_NAME
ORDER BY E.EMP_NO