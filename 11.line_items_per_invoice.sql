SELECT 
    InvoiceId,
    COUNT(*) AS lines_items_in_invoice
FROM InvoiceLine
GROUP BY InvoiceId