SELECT
    i.invoiceId,
    t.name AS track_name,
    ar.name AS artist_name    
FROM InvoiceLine i
JOIN Track t ON i.trackId = t.trackId
JOIN Album al ON t.albumId = al.albumId
JOIN Artist ar ON al.artistId = ar.artistId