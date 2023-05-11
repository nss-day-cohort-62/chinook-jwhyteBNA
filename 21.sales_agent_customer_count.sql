SELECT 
    e.FirstName || ' ' || e.LastName AS 'Employee Name',
    COUNT(c.SupportRepId) AS 'Number of Clients'
FROM employee e 
FULL JOIN customer c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId