# Write your MySQL query statement below
SELECT CASE WHEN COUNT(*) = 1 THEN null
ELSE (
    SELECT DISTINCT(salary)
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) END  AS SecondHighestSalary 
FROM Employee