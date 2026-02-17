-- File: 05_joins.sql
-- Description: Combining data from multiple tables using JOINs
-- Skills: INNER JOIN, LEFT JOIN
-- Level: Beginner to Intermediate

-- Get orders with customer information
SELECT
o.order_id,
o.order_date,
o.total_amount,
c.customer_name,
c.country
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

-- Get all customers and their orders (if any)
SELECT
c.customer_name,
c.country,
o.order_id,
o.total_amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- Total revenue per customer
SELECT
c.customer_name,
SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
