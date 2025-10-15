WITH RECURSIVE single as (
    SELECT ID, PARENT_ID, 1 as GENERATION
    FROM ecoli_data
    WHERE PARENT_ID is null
    UNION ALL
    SELECT E.ID, E.parent_id, S.GENERATION + 1
    FROM ecoli_data E
    JOIN single S ON S.ID = E.parent_id
)
SELECT COUNT(*) as COUNT, GENERATION
FROM single S
LEFT JOIN ecoli_data E
ON S.ID = E.parent_id
WHERE E.parent_id is null
GROUP BY 2
ORDER BY 2