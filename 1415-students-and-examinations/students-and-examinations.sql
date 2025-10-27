# Write your MySQL query statement below


SELECT T.student_id, T. student_name, S.subject_name, IFNULL(attended_exams,0) as attended_exams
FROM students T
CROSS JOIN Subjects S
LEFT JOIN (SELECT students.student_id, student_name, subject_name, COUNT(subject_name) as attended_exams
            FROM students
            JOIN examinations
            ON students.student_id = examinations.student_id
            GROUP BY students.student_id, subject_name) A
ON A.student_id  = T.student_id AND S.subject_name = A.subject_name
ORDER BY student_id, subject_name