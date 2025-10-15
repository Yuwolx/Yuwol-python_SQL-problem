-- 코드를 작성해주세요
SELECT ID, FISH_NAME, LENGTH
FROM fish_info I
LEFT JOIN fish_name_info N
ON I.fish_type = N.fish_type
WHERE LENGTH = (SELECT max(LENGTH)
               FROM FISH_INFO F
               WHERE F.fish_type = I.fish_type
               GROUP BY fish_type)
ORDER BY ID