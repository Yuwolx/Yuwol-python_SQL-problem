# Write your MySQL query statement below
SELECT distinct a1.num as ConsecutiveNums
FROM logs a1
JOIN logs a2
ON a2.id = (a1.id + 1)
    AND a1.num = a2.num
JOIN logs a3
ON a3.id = (a1.id + 2)
    AND a1.num = a3.num