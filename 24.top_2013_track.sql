-- More than 1 top purchase, how to show all MAX?

SELECT 
    Name,
    Max(Purchases) as Purchases
FROM (
    SELECT 
        t.name as Name,
        COUNT(*) as Purchases
    FROM Track t 
    JOIN InvoiceLine il ON il.TrackId = t.TrackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    WHERE i.InvoiceDate LIKE '2013%'
    GROUP BY t.Name
    ORDER BY Purchases DESC
    )

SELECT 
        t.name as Name,
        COUNT(*) as Purchases
    FROM Track t 
    JOIN InvoiceLine il ON il.TrackId = t.TrackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    WHERE i.InvoiceDate LIKE '2013%'
    GROUP BY t.Name
    ORDER BY Purchases DESC


