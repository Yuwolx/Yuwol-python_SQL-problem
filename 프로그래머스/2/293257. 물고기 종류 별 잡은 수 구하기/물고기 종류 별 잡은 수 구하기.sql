-- 코드를 작성해주세요
SELECT COUNT(*) as FISH_COUNT, FISH_NAME
FROM fish_info I
LEFT JOIN fish_name_info N
ON I.fish_type = N.fish_type
GROUP BY 2
ORDER BY 1 dESC