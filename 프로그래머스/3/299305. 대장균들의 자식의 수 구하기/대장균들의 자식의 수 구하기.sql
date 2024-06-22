-- 코드를 작성해주세요
SELECT D.ID, ifnull((SELECT COUNT(*) 
            FROM ECOLI_DATA E 
            WHERE E.PARENT_ID = D.ID
            GROUP BY PARENT_ID),0) AS CHILD_COUNT
FROM ecoli_data D
ORDER BY D.id