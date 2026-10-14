-- Returns: customer, total_orders, total_spent.
select customer, count(*) as total_orders, sum(amount) as total_spent
from orders
group by customer
having count(*) >=2
order by total_spent desc