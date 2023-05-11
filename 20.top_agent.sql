SELECT
    MAX(Sales_Records) AS 'Top Sales All-Time',
    full_name AS 'Top Salesperson All-Time'
FROM (
    SELECT
    e.FirstName || ' ' || e.LastName AS full_name,
    ROUND(SUM(i.Total),2) AS Sales_Records
    FROM Invoice i
    JOIN Customer c ON i.CustomerId = c.CustomerId
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
    GROUP BY e.EmployeeId
)
