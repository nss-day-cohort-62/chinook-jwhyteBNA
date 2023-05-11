SELECT 
        t.name as 'Track Name',
        COUNT(*) as Purchases
    FROM Track t 
    JOIN InvoiceLine il ON il.TrackId = t.TrackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    GROUP BY t.Name
    ORDER BY Purchases DESC
    LIMIT 5


