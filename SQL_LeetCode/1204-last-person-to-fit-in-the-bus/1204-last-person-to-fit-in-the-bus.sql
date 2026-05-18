# Write your MySQL query statement below
-- SELECT person_name
-- FROM(SELECT turn, person_name, weight,
--         CASE WHEN turn = 1 then weight
--             WHEN turn != 1 then (SELECT SUM(weight) FROM queue b WHERE b.turn <= a.turn)
--             END AS TOTAL
--     FROM Queue a
--     HAVING total <= 1000
--     ORDER BY turn) alpha
-- ORDER BY total DESC
-- LIMIT 1

SELECT person_name
FROM
    (SELECT person_name, SUM(weight) OVER(ORDER BY turn) as total_weight
    FROM Queue) alpha
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1