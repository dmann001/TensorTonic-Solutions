SELECT 
    department,
    COUNT(*) AS total_tickets, 
    SUM(status= 'open') as open_count,
    SUM(status= 'in_progress') as in_progress_count,
    SUM(status= 'closed') as closed_count
FROM tickets
GROUP BY department
ORDER BY total_tickets DESC, department ASC;