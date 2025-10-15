-- 코드를 입력하세요
SELECT user_id, NICKNAME, 
    CONCAT(city,' ',STREET_ADDRESS1, ' ',STREET_ADDRESS2) as '전체주소',    
    concat(left(TLNO,3),'-',right(left(TLNO,7),4),'-',RIGHT(TLNO,4)) as '전화번호'
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_USER U
ON B.writer_id = U.user_id
WHERE U.user_id in (SELECT writer_id FROM used_goods_board
                  GROUP BY 1
                  HAVING count(board_id) >= 3)
GROUP BY 1
order by 1 desc