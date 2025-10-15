-- 코드를 입력하세요
SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
from online_sale
where sales_date like "2022-03-__"
union
SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, null, SALES_AMOUNT
from offline_sale
where sales_date like "2022-03-__"
order by sales_date, 2,3