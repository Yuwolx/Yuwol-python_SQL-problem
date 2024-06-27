-- 코드를 작성해주세요
SELECT ID, GENOTYPE, (SELECT genotype
                      from ECOLI_DATA D
                      WHERE ID = E.parent_id)
                      as PARENT_GENOTYPE
FROM ECOLI_DATA E
WHERE genotype & (SELECT genotype
                      from ECOLI_DATA D
                      WHERE ID = E.parent_id) >= (SELECT genotype
                      from ECOLI_DATA D
                      WHERE ID = E.parent_id)
ORDER BY ID
