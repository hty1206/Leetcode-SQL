# Write your MySQL query statement below
SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
    SELECT S.product_id, MIN(S.year)
    FROM Sales S
    JOIN Product P
    ON S.product_id = P.product_id
    GROUP BY S.product_id
)