
-- Total Revenue
SELECT SUM(revenue) AS total_revenue FROM transactions;

-- Revenue During Campaign (Oct 15 - Nov 15)
SELECT SUM(revenue) AS festive_revenue
FROM transactions
WHERE order_date BETWEEN '2023-10-15' AND '2023-11-15';

-- Store-wise Revenue
SELECT store_id, SUM(revenue) AS store_revenue
FROM transactions
GROUP BY store_id
ORDER BY store_revenue DESC;

-- Top 10 Products
SELECT product_id, SUM(revenue) AS product_revenue
FROM transactions
GROUP BY product_id
ORDER BY product_revenue DESC
LIMIT 10;
