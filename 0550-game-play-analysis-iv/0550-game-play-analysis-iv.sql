# Write your MySQL query statement below
-- SELECT ROUND((count(distinct player_id)) / (SELECT COUNT(distinct player_id) FROM activity) ,2) as fraction
-- FROM(SELECT player_id, event_date, 
--             RANK() OVER(PARTITION BY player_id ORDER BY event_date) as rnk,
--             DATEDIFF(event_date, LAG(event_date) 
--             OVER (PARTITION BY player_id ORDER BY event_date)) as gaps
--     FROM activity) alpha
-- WHERE rnk = 2 AND gaps = 1

SELECT player_id, event_date
FROM activity a1
JOIN activity a2
ON a1.player_id = a2.player_id
    AND a1.event_date = a2.event_date