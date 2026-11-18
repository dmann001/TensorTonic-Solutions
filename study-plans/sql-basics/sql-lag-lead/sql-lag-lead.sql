-- Returns: month, revenue, prev_revenue, revenue_change.
select
    month,
    revenue,
    LAG(revenue,1,0) over (order by month,id) as prev_revenue,
	revenue - LAG(revenue,1,0) over (order by month,id) as revenue_change
from 
    monthly_revenue
order by month asc, id asc