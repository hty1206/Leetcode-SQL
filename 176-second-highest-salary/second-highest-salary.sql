# Write your MySQL query statement below
SELECT CASE WHEN COUNT(DISTINCT salary) = 1 THEN null ELSE(
    SELECT salary 
    FROM Employee
    GROUP BY salary
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
)END AS SecondHighestSalary
FROM Employee