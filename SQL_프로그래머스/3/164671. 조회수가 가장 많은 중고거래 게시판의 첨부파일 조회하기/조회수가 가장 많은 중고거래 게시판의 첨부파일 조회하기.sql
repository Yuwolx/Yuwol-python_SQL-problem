-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/',B.board_id,'/',File_id,file_name,file_ext) AS FILE_PATH
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_FILE F
ON B.BOARD_ID = F.BOARD_ID
WHERE B.board_id = (SELECT board_id from USED_GOODS_BOARD
                    order by views desc
                    limit 1)
order by file_id DESC