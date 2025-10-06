# Write your MySQL query statement below
SELECT S1.student_id, S1.subject, S1.score AS first_score, S2.score AS latest_score
FROM Scores S1
JOIN Scores S2
ON S1.student_id = S2.student_id AND S1.subject = S2.subject
AND S1.exam_date != S2.exam_date
AND S1.exam_date = (SELECT MIN(exam_date) FROM Scores WHERE S1.student_id = student_id AND S1.subject = subject)
AND S2.exam_date = (SELECT MAX(exam_date) FROM Scores WHERE S2.student_id = student_id AND S2.subject = subject)
WHERE S1.score < S2.score
ORDER BY student_id, subject