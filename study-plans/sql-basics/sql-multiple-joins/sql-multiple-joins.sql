-- Write your SQL query here
SELECT u.username, e.experiment_name, e.variant, c.revenue
FROM Users u
INNER JOIN Experiment_assignments e ON
e.user_id=u.id
INNER JOIN Conversions c ON
e.user_id=c.user_id
ORDER BY e.experiment_name ASC, c.revenue DESC, u.username ASC