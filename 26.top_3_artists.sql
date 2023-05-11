SELECT 
        a.Name as 'Artist Name',
        COUNT(*) as Purchases
    FROM Track t
    JOIN InvoiceLine il ON il.TrackId = t.TrackId
    JOIN Album al ON t.AlbumId = al.AlbumId
    JOIN Artist a ON al.ArtistId=a.ArtistId
    GROUP BY a.Name
    ORDER BY Purchases DESC
    LIMIT 3
