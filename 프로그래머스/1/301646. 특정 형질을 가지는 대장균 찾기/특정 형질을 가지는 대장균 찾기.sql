-- 코드를 작성해주세요
select count(*) as COUNT
from ecoli_data
WHERE (genotype & 2) = 0
    and (genotype & 5) > 0