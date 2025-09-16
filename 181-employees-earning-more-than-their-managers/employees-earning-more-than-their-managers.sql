# Write your MySQL query statement below
SELECT E1.name AS Employee
FROM Employee E1
JOIN Employee E2
ON E2.id = E1.managerId
WHERE E1.salary > E2.salary