-- 코드를 입력하세요
SELECT A.AUTHOR_ID, AUTHOR_NAME, CATEGORY,
    SUM(price*sales) as TOTAL_SALES
FROM BOOK B
JOIN AUTHOR A ON B.author_id = A.author_id
JOIN BOOK_SALES S ON B.book_id = S.book_id
WHERE SALES_DATE like  '2022-01-%'
GROUP BY 1,2,3
ORDER BY AUTHOR_ID, CATEGORY DESC