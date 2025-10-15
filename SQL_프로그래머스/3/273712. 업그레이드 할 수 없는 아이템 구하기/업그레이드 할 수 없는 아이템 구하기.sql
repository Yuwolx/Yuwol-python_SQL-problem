-- 코드를 작성해주세요
SELECT ITEM_ID, ITEM_NAME, RARITY
FROM item_info
WHERE ITEM_ID not in (SELECT distinct PARENT_ITEM_ID
                     FROM item_tree
                     WHERE parent_item_id is not null)
ORDER BY 1 DESC