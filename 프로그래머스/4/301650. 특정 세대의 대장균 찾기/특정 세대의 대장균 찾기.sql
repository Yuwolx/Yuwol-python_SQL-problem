-- 코드를 작성해주세요

SELECT ID
FROM (SELECT ID, parent_id
FROM ecoli_data
WHERE parent_id in (SELECT ID
    FROM ecoli_data
    WHERE parent_id is not null)
ORDER BY 1) a
WHERE parent_id not in 
    (SELECT ID
FROM (SELECT ID, parent_id
FROM ecoli_data
WHERE parent_id in (SELECT ID
    FROM ecoli_data
    WHERE parent_id is not null)
    ORDER BY 1) b)
ORDER BY 1

