-- Returns: name, salary, dept_name.
select e.name,e.salary,d.dept_name
from employees e
inner join departments d on e.dept_id = d.id
order by e.name asc