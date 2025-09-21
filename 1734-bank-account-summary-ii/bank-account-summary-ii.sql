# Write your MySQL query statement below
SELECT name,
SUM(amount) AS balance
FROM Users U
LEFT JOIN Transactions T
ON U.account = T.account
GROUP BY U.account
HAVING balance > 10000