SELECT SD, ED
FROM (SELECT SD, rank() over(ORDER BY SD) as rnk
    FROM(SELECT 
            CASE WHEN start_date IN (SELECT end_date FROM projects) THEN NULL ELSE start_date END as SD,
            CASE WHEN end_date IN (SELECT start_date FROM projects) THEN NULL ELSE end_date END as ED
        FROM projects) xx
    WHERE SD is not NULL) X


JOIN (SELECT ED, rank() over(ORDER BY ED) as rnk
    FROM(SELECT 
            CASE WHEN start_date IN (SELECT end_date FROM projects) THEN NULL ELSE start_date END as SD,
            CASE WHEN end_date IN (SELECT start_date FROM projects) THEN NULL ELSE end_date END as ED
        FROM projects) yy
    WHERE ED is not NULL) Y
    
ON X.rnk = Y.rnk
ORDER BY DATEDIFF(ED,SD)