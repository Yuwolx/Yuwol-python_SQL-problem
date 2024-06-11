-- 코드를 입력하세요
SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
FROM member_profile
WHERE DATE_OF_BIRTH like '%-03-%' 
    and tlno is not null
    and GENDER = 'W'
ORDER BY MEMBER_ID