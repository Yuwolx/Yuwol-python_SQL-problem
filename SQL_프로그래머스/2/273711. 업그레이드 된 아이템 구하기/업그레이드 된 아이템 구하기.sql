-- 코드를 작성해주세요
WITH rare_parent AS (SELECT Item_id as rare_parent FROM item_info
WHERE rarity = 'RARE'
AND item_id IN (
    SELECT parent_item_id FROM item_tree)),
    
up_item AS (SELECT ITEM_ID as up_item, parent_item_id FROM item_tree
           JOIN rare_parent
           ON item_tree.parent_item_id = rare_parent.rare_parent)
          
SELECT ITEM_ID, ITEM_NAME, RARITY FROM ITEM_INFO
JOIN up_item ON item_info.item_id = up_item.up_item
ORDER BY ITEM_ID DESC;
