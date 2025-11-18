# Write your MySQL query statement below
SELECT name
FROM employee
WHERE id in 
(SELECT managerid
FROM employee
GROUP BY managerid
HAVING count(*) >=5)