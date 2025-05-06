# Write your MySQL query statement below
SELECT *
FROM Users
WHERE mail RLIKE '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\\?com)?\\.com$'