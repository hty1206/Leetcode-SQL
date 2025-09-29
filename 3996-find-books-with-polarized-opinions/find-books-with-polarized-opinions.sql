# Write your MySQL query statement below
SELECT B.book_id, B.title, B.author, B.genre, B.pages, 
MAX(session_rating) - MIN(session_rating) AS rating_spread,
ROUND(SUM(CASE WHEN session_rating >= 4 OR session_rating <= 2 THEN 1 ELSE 0 END)/COUNT(session_rating), 2) AS polarization_score
FROM books B
RIGHT JOIN reading_sessions R
ON B.book_id = R.book_id
GROUP BY book_id
HAVING COUNT(session_id) >= 5
AND MAX(R.session_rating) >= 4 AND MIN(R.session_rating) <= 2
AND polarization_score >= 0.6
ORDER BY polarization_score DESC, title DESC