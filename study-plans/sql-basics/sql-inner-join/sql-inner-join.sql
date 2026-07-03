-- Write your SQL query here
SELECT 
    e.name, 
    e.salary,
    d.dept_name
FROM 
    Employees e
INNER JOIN
    Departments d ON e.dept_id=d.id
ORDER BY
    e.name ASC;