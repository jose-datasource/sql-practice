-- File: 03_aggregations.sql
-- Description: SQL aggregation functions and grouping
-- Skills: COUNT, SUM, AVG, GROUP BY
-- Level: Beginner

-- Count total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Count customers by country
SELECT country, COUNT(*) AS customers_count
FROM customers
GROUP BY country;

-- Total revenue from orders
SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- Average order value
SELECT AVG(total_amount) AS average_order_value
FROM orders;

-- Revenue by country
SELECT country, SUM(total_amount) AS revenue
FROM orders
GROUP BY country;
