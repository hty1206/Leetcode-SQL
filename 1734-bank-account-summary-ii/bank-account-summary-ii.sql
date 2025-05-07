# Write your MySQL query statement below
SELECT U.name AS NAME, SUM(T.amount) AS BALANCE
FROM Users U
RIGHT JOIN Transactions T
ON U.account = T.account
GROUP BY U.account
HAVING BALANCE > 10000