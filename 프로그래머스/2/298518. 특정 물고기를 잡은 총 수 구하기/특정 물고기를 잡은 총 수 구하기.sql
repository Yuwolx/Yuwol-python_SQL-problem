-- 코드를 작성해주세요
SELECT COUNT(*) AS FISH_COUNT
FROM fish_info A
LEFT JOIN fish_name_info B
ON A.FISH_type = B.fish_type
WHERE fish_name in ('BASS','SNAPPER','ANCHOVY')
