-- Active: 1757376211335@@mydbinstance.cb4iuuq0kuoa.ap-southeast-2.rds.amazonaws.com@3306@mysql
WITH RECURSIVE numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000
)
SELECT GROUP_CONCAT(n SEPARATOR '&') as Prime
FROM numbers x
WHERE n not in (SELECT x.n FROM numbers y
      WHERE (x.n > y.n) AND MOD(x.n,y.n) =0)

-- 소수가 되려면 자신과 1을 제외한 나머지 숫자로 나눠지지 않아야한다.