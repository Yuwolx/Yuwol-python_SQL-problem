# Write your MySQL query statement below


SELECT a.category, IFNULL(accounts_count,0) as accounts_count
FROM (SELECT "Low Salary" as category
    UNION ALL
    SELECT "Average Salary" as category
    UNION ALL
    SELECT "High Salary" as category) a
LEFT JOIN
    (SELECT CASE WHEN income < 20000 THEN "Low Salary"
                WHEN income > 50000 THEN "High Salary"
                ELSE "Average Salary" END AS category,
                COUNT(*) as accounts_count
    FROM accounts
    GROUP BY category) b
ON a.category = b.category