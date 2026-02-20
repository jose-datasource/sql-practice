SELECT c.country,
SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;
