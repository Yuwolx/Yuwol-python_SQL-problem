# Write your MySQL query statement below
SELECT A.Id
FROM weather A
JOIN weather B
ON DATEDIFF(A.recorddate,B.recorddate) = 1
where A.temperature > B.temperature