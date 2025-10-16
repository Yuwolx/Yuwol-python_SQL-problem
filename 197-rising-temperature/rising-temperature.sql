# Write your MySQL query statement below
SELECT Id
FROM weather A
WHERE temperature > (SELECT temperature FROM weather B WHERE 1 = datediff(A.recorddate,B.recorddate))