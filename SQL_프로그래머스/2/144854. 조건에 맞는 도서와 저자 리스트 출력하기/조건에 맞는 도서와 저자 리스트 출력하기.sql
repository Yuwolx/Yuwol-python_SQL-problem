-- 코드를 입력하세요
SELECT BOOK_ID, AUTHOR_NAME,
    date_format(published_date, '%Y-%m-%d') AS PUBLISHED_DATE
FROM book B
JOIN author A
ON B.author_id = A.author_id
WHERE category = '경제'
ORDER BY published_date