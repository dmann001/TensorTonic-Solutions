-- Returns: product, revenue, sale_date.
select product, revenue, sale_date
from sales
order by revenue desc,sale_date asc
LIMIT 3 OFFSET 1