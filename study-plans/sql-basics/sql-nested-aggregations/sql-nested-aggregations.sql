SELECT 
    ROUND(AVG(daily_count),2) as avg_daily_orders,
    ROUND(AVG(daily_revenue),2) as avg_daily_revenue, 
    MAX(daily_count) as busiest_day_orders
from (  
SELECT 
    order_date, 
    count(*) as daily_count,
    SUM(amount) AS daily_revenue
FROM orders
GROUP BY order_date
    ) daily_sums;

