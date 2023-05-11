SELECT 
    i.InvoiceId,
    e.FirstName || ' ' || e.LastName AS 'Sale Rep Name'
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER BY e.FirstName ASC