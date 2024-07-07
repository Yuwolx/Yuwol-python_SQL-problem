-- 코드를 작성해주세요
SELECT QUARTER, count(*) as ECOLI_COUNT
FROM (SELECT ID, CASE WHEN month(DIFFERENTIATION_DATE) between 01 and 03
            then '1Q'
            WHEN month(DIFFERENTIATION_DATE) between 04 and 06
            THEN '2Q'
            WHEN month(DIFFERENTIATION_DATE) between 07 and 09
            THEN '3Q'
            ELSE '4Q' end as QUARTER
FROM ecoli_data) a
GROUP BY 1
ORDER BY 1