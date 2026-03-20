# Write your MySQL query statement below
SELECT person_name
FROM(SELECT turn, person_name, weight,
        CASE WHEN turn = 1 then weight
            WHEN turn != 1 then (SELECT SUM(weight) FROM queue b WHERE b.turn <= a.turn)
            END AS TOTAL
    FROM Queue a
    HAVING total <= 1000
    ORDER BY turn) alpha
ORDER BY total DESC
LIMIT 1