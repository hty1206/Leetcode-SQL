# Write your MySQL query statement below
SELECT unique_id, name
FROM Employees E
LEFT JOIN EmployeeUNI EUNI
ON E.id = EUNI.id