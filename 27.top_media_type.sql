SELECT 
    Media_Type,
    MAX(Purchases) as Purchases
FROM (
    SELECT
        m.Name as Media_Type,
        COUNT(*) as Purchases
    FROM Track t
    JOIN InvoiceLine il ON il.TrackId = t.TrackId
    JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
    GROUP BY m.Name
    ORDER BY Purchases DESC
)
