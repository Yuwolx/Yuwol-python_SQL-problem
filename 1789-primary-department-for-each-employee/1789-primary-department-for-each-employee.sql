# Write your MySQL query statement below
-- SELECT employee_id, department_id 
-- FROM (SELECT e.employee_id,department_id ,
--         CASE WHEN primary_flag = 'Y' or id_cnt = 1 THEN 'T'
--         END AS type_check
--     FROM employee e 
--     LEFT JOIN (SELECT 
--             employee_id, COUNT(*) as id_cnt
--         FROM employee
--         GROUP BY employee_id) alpha
--     ON e.employee_id = alpha.employee_id) beta
-- WHERE type_check = 'T'

SELECT employee_id, department_id 
FROM employee
WHERE primary_flag = 'Y' 
    OR employee_id 
        IN (SELECT employee_id
            FROM employee 
            GROUP BY employee_id
            HAVING  count(*) = 1)
