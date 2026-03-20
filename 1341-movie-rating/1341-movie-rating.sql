# Write your MySQL query statement below
SELECT name as results
FROM(SELECT movierating.user_id, name, COUNT(*)
FROM movierating
LEFT JOIN users
ON movierating.user_id = users.user_id
GROUP BY movierating.user_id, name
ORDER BY COUNT(*) DESC, name
LIMIT 1) a

UNION ALL

SELECT title as results
FROM(SELECT movierating.movie_id, title, AVG(rating)
    FROM movierating
    LEFT JOIN movies
    ON movierating.movie_id = movies.movie_id
    WHERE created_at like '2020-02%'
    GROUP BY  movierating.movie_id, title
    ORDER BY AVG(rating) DESC , title
    LIMIT 1) c