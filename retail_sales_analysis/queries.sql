-- Retail Sales Analysis
-- Author: Jose M.
-- Description: SQL queries answering key business questions
-- Tables: customers, orders

-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Revenue by country
SELECT
c.country,
SUM(o.total_amount) AS total_revenue
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- 3. Average order value
SELECT AVG(total_amount) AS average_order_value
FROM orders;

-- 4. Top 5 customers by total spend
SELECT
c.customer_name,
SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 5. Number of orders per customer
SELECT
c.customer_name,
COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC;
