SELECT 
    i.Total,
    c.FirstName || ' ' || c.LastName AS 'Customer Name',
    c.Country,
    e.FirstName || ' ' || e.LastName AS 'Employee Name'
FROM Invoice i
JOIN Customer c ON i.CustomerId=c.CustomerId
JOIN Employee e on e.EmployeeId = c.SupportRepId
ORDER BY c.Country ASC