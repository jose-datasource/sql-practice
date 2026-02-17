-- File: 04_order_by_limit.sql
-- Description: Sorting and limiting query results
-- Skills: ORDER BY, ASC, DESC, LIMIT
-- Level: Beginner

-- Order customers alphabetically by name
SELECT *
FROM customers
ORDER BY customer_name ASC;

-- Order customers by country and city
SELECT *
FROM customers
ORDER BY country ASC, city ASC;

-- Get the most recent orders
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 10;

-- Get top 5 highest value orders
SELECT *
FROM orders
ORDER BY total_amount DESC
LIMIT 5;

-- Get oldest customers
SELECT *
FROM customers
ORDER BY created_at ASC
LIMIT 10;
