SELECT visited_on,
    (SELECT SUM(amount) FROM (SELECT visited_on, SUM(amount) as amount
                                FROM customer
                                GROUP BY visited_on) c
        WHERE visited_on 
            BETWEEN DATE_SUB(a.visited_on, interval 6 day) 
            AND a.visited_on) as amount,
    (SELECT ROUND(AVG(amount),2) FROM (SELECT visited_on, SUM(amount) as amount
                                FROM customer
                                GROUP BY visited_on) c
        WHERE visited_on 
            BETWEEN DATE_SUB(a.visited_on, interval 6 day) 
            AND a.visited_on) as average_amount
FROM (SELECT visited_on, SUM(amount) as amount
        FROM customer
        GROUP BY visited_on) a
WHERE visited_on >= (SELECT visited_on
                    FROM(SELECT distinct visited_on, 
                                RANK() OVER(ORDER BY visited_on) as rnk
                            FROM customer
                            GROUP BY visited_on) k
                            WHERE rnk = 7)
