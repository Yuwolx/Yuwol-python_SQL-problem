-- 코드를 입력하세요
SELECT MEMBER_NAME, REVIEW_TEXT, 
    DATE_FORMAT(review_date,'%Y-%m-%d') AS REVIEW_DATE
FROM member_profile MP
JOIN rest_review RR 
ON MP.member_id = RR.member_id
WHERE MP.member_id = (
    SELECT member_id
    FROM rest_review
    GROUP BY member_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
ORDER BY REVIEW_DATE, REVIEW_TEXT;
