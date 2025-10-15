-- 코드를 입력하세요
SELECT DR_NAME, DR_ID, MCDP_CD, date_format(HIRE_YMD,'%Y-%m-%d')
FROM doctor
WHERE MCDP_CD in ('CS','GS')
order by 4 desc, 1;
