SELECT A.machine_id, ROUND(AVG((end_time - timestamp)),3) as processing_time 
FROM  activity A
JOIN (SELECT machine_id, process_id, activity_type, timestamp as end_time
    FROM  activity
    WHERE activity_type = 'end') B
ON A.machine_id = B.machine_id AND A.process_id = B.process_id
WHERE A.activity_type = 'start'
GROUP BY machine_id