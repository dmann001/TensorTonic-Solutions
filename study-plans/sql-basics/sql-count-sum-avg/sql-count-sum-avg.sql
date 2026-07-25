-- Write your SQL query here
SELECT category, COUNT(*) AS total_sales, SUM(AMOUNT) as total_revenue,AVG(discount) AS avg_discount
FROM sales
GROUP BY category
ORDER BY total_revenue DESC, category ASC