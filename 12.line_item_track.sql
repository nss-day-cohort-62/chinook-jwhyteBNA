SELECT
    i.invoiceId,
    t.name    
FROM Track t
JOIN InvoiceLine i WHERE i.trackId = t.trackId