-- File: 02_where_filters.sql
-- Description: SQL queries using WHERE for filtering data
-- Skills: WHERE, AND, OR, IN, BETWEEN, LIKE
-- Level: Beginner

-- Filter customers from a specific country
SELECT *
FROM customers
WHERE country = 'Netherlands';

-- Filter customers from multiple countries
SELECT *
FROM customers
WHERE country IN ('Netherlands', 'Germany', 'France');

-- Filter customers using AND
SELECT *
FROM customers
WHERE country = 'Netherlands'
AND city = 'Amsterdam';

-- Filter using BETWEEN
SELECT *
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Filter using LIKE
SELECT *
FROM customers
WHERE customer_name LIKE 'A%';
