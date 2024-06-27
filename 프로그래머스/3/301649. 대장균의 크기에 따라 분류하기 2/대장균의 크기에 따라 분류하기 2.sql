-- 코드를 작성해주세요

SELECT ID, CASE WHEN rnk <= count*0.25 THEN 'CRITICAL'
                WHEN rnk <= count*0.50 THEN 'HIGH'
                WHEN rnk <= count*0.75 THEN 'MEDIUM'
                WHEN rnk <= count THEN 'LOW'
                END as COLONY_NAME
FROM (SELECT ID, size_of_colony, row_number() OVER(ORDER BY size_of_colony dESC) as rnk,  COUNT(*) OVER() as count
    FROM ecoli_data
) a 
ORDER BY ID
