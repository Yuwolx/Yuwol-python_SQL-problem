-- 코드를 입력하세요
SELECT mcdp_cd AS '진료과코드', count(apnt_no) AS '5월예약건수'
FROM appointment
WHERE apnt_ymd LIKE '2022-05-%'
GROUP BY 1
ORDER BY 2,1