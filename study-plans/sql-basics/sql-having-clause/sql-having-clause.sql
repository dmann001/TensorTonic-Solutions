SELECT customer, COUNT(*) AS total_orders, SUM(amount) as total_spent
FROM orders
GROUP BY customer HAVING COUNT(*)>=2
ORDER BY total_spent DESC;
