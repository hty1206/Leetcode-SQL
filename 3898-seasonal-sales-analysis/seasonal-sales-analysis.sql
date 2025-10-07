# Write your MySQL query statement below
WITH
season_sales AS (
    SELECT (
        CASE WHEN MONTH(sale_date) IN (12,1,2) THEN 'Winter'
             WHEN MONTH(sale_date) IN (3,4,5) THEN 'Spring'
             WHEN MONTH(sale_date) IN (6,7,8) THEN 'Summer'
             WHEN MONTH(sale_date) IN (9,10,11) THEN 'Fall' END
    ) AS season, category,
    SUM(quantity) AS total_quantity,
    SUM(quantity * price) AS total_revenue
    FROM sales S
    JOIN products P
    ON S.product_id = P.product_id
    GROUP BY season, category
),

rank_categories AS (SELECT *, ROW_NUMBER() OVER(PARTITION BY season ORDER BY total_quantity DESC, total_revenue DESC) AS RNK
FROM season_sales)

SELECT season, category, total_quantity, total_revenue
FROM rank_categories
WHERE RNK = 1
ORDER BY season