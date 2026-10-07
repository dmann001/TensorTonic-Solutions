-- Returns: username, experiment_name, variant, revenue.
select u.username, e.experiment_name, e.variant,c.revenue
from users u
join experiment_assignments e on u.id= e.user_id
join conversions c on c.user_id=u.id
order by e.experiment_name asc, c.revenue desc, u.username asc