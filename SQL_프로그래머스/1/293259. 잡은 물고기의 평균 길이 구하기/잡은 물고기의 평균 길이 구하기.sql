-- 코드를 작성해주세요
SELECT ROUND(AVG(length),2) as AVERAGE_LENGTH
FROM (SELECT ifnull(length,10) as length
    FROM fish_info) a
    
