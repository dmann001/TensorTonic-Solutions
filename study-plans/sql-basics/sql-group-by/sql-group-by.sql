-- Returns: customer, total_orders, total_spent.
select customer, count(product) as total_orders, sum(amount) as total_spent
from orders
group by customer
order by total_spent desc