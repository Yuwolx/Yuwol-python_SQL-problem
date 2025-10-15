-- 코드를 입력하세요
SELECT ID, NAME, HOST_ID
FROM places
WHERE HOST_ID IN (
    SELECT host_id 
    FROM (
        SELECT host_id, count(*) as cint
        FROM places
        GROUP BY 1) a
    WHERE cint >=2
)
ORDER BY 1