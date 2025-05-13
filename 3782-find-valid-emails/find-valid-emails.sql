# Write your MySQL query statement below
SELECT *
FROM Users
WHERE email RLIKE '^[a-zA-Z0-9]+@+[a-zA-Z]+.com$'