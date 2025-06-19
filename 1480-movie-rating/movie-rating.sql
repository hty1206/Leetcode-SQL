# Write your MySQL query statement below
(SELECT U.name AS results
FROM Users U
JOIN MovieRating MR
ON U.user_id = MR.user_id
GROUP BY U.name
ORDER BY COUNT(*) DESC, U.name
LIMIT 1)

UNION ALL

(SELECT M.title AS results
FROM Movies M
JOIN MovieRating MR
ON M.movie_id = MR.movie_id
WHERE created_at LIKE '2020-02%'
GROUP BY M.title
ORDER BY AVG(rating) DESC, M.title
LIMIT 1)