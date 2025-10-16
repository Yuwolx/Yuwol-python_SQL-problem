# Write your MySQL query statement below
SELECT Id
FROM weather A
WHERE temperature > (SELECT temperature FROM weather B WHERE datediff(A.recorddate,B.recorddate)= 1)