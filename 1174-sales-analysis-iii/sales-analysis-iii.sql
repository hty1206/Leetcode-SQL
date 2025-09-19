# Write your MySQL query statement below
SELECT P.product_id, P.product_name
FROM Product P
RIGHT JOIN Sales S
ON S.product_id = P.product_id
GROUP BY product_id
HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31'