SELECT
    e.FirstName || ' ' || e.LastName AS 'Sales Rep Name',
    ROUND(SUM(i.Total),2) AS 'All-Time Sales'
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
