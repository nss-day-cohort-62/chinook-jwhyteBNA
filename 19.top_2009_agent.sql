SELECT 
    MAX(total_Sales) AS 'Top Sales 2009', 
    fullName AS 'Top Salesperson 2009'
FROM (
    SELECT SUM(Total) AS total_Sales,
    e.FirstName || ' ' || e.LastName AS 'fullName'
    FROM Invoice i
    JOIN Customer c ON i.CustomerId = c.CustomerId
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
    WHERE i.InvoiceDate LIKE '2009%'
    GROUP BY e.EmployeeId
)
