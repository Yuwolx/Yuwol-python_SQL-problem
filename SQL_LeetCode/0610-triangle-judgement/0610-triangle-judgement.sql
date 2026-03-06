# Write your MySQL query statement below
SELECT * ,
    CASE WHEN (x + y <= z) or (x + z <= y) or (y + z <= x) THEN 'No'
    ELSE 'Yes' END AS triangle

FROM triangle