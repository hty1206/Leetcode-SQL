# Write your MySQL query statement below
SELECT S.student_id, S.student_name, Sj.subject_name, 
COUNT(E.subject_name) AS attended_exams
FROM Students S
CROSS JOIN Subjects Sj
LEFT JOIN Examinations E
ON S.student_id = E.student_id AND sj.subject_name = E.subject_name
GROUP BY S.student_id, Sj.subject_name
ORDER BY S.student_id, Sj.subject_name