-- 코드를 입력하세요
SELECT 
    rest_info.REST_ID, REST_NAME,
    FOOD_TYPE, FAVORITES, ADDRESS, round(AVG(review_score),2) AS SCORE
FROM rest_info
JOIN rest_review
ON rest_info.rest_id = rest_review.rest_id
WHERE ADDRESS LIKE '서울%'
GROUP BY 1
ORDER BY SCORE desc, FAVORITES desc;
