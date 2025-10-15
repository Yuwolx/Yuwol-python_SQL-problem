-- 코드를 입력하세요
SELECT ANIMAL_TYPE, count(*) as count
FroM animal_ins
GROUP BY 1
order by 1