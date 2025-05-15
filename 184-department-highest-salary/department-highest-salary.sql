# Write your MySQL query statement below
SELECT D.name AS Department, E.name AS Employee, E.Salary
FROM Employee E
LEFT JOIN Department D
ON E.departmentId = D.id
WHERE (D.id, E.Salary) IN (
    SELECT departmentId, MAX(salary)
    FROM Employee
    GROUP BY departmentId
)