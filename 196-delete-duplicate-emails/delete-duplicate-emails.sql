# Write your MySQL query statement below
# deletes rows from P1
DELETE P1
FROM Person P1
# When two identical tables perform an INNER JOIN, the result will be all possible pairings of rows between the two tables that meet the join condition
INNER JOIN Person P2 
ON P1.email = P2.email
WHERE P1.id > P2.id