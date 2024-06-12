-- 코드를 입력하세요
SELECT first_half.FLAVOR
FROM first_half
join icecream_info
ON first_half.flavor = icecream_info.flavor
WHERE TOTAL_ORDER > 3000
    AND ingredient_type = 'fruit_based'
ORDER BY total_order desc;