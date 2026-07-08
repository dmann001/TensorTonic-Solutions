-- Write your SQL query here
SELECT 
    c.name,
    c.city,
    COALESCE(SUM(o.amount),0) AS total_spent
FROM customers c
LEFT JOIN orders o ON 
    o.customer_id = c.id
GROUP BY
    c.name,c.city,c.city
ORDER BY
    total_spent DESC,
    c.name ASC