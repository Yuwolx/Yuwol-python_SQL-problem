-- 코드를 입력하세요
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM rest_info R
WHERE FAVORITES = (
    SELECT MAX(favorites)
    FROM rest_info RI
    WHERE R.food_type = RI.food_type
    )
GROUP BY FOOD_TYPE
ORDER BY 1 DESC;