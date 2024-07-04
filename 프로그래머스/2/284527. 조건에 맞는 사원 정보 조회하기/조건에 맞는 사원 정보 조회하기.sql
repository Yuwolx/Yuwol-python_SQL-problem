-- 코드를 작성해주세요
with score as(
SELECT EMP_NO, SUM(SCORE) AS score,
    rank() over(order by SUM(SCORE) DESC) as rnk 
FROM HR_GRADE
    WhERE year = '2022'
GROUP BY 1
ORDER BY 2 DESC)

SELECT SCORE, E.EMP_NO, EMP_NAME, POSITION, EMAIL
FROM HR_EMPLOYEES E
JOIN score S
ON E.emp_no = S.emp_no
WHERE rnk = 1