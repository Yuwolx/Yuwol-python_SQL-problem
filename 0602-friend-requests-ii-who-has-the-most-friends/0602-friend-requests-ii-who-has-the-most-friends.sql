# Write your MySQL query statement below
WITH request AS (
    SELECT requester_id as ids, COUNT(*) as id_num
    FROM RequestAccepted
    GROUP BY 1
),

accept AS (
    SELECT accepter_id as ids, COUNT(*) as id_num
    FROM RequestAccepted
    GROUP BY 1
)

SELECT ids as id, SUM(id_num) as num
FROM(SELECT *
    FROM request
    UNION ALL
    SELECT *
    FROM accept) alpha
GROUP BY ids
ORDER BY num DESC
LIMIT 1