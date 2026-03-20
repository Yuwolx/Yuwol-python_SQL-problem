# Write your MySQL query statement below
SELECT a.id, c.student
FROM seat a
JOIN
    (SELECT * FROM seat) c
ON a.id = IF(a.id % 2 != 0 AND a.id+1 NOT IN (SELECT id FROM seat) , c.id,
    IF(a.id % 2 != 0, c.id - 1, c. id + 1))
ORDER BY a.id