# Write your MySQL query statement below
SELECT P.product_name, 
SUM(O.unit) AS unit
FROM Products P
RIGHT JOIN Orders O
ON P.product_id = O.product_id
WHERE order_date LIKE '2020-02%'
GROUP BY P.product_name
HAVING unit >= 100