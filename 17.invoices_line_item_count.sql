SELECT
    InvoiceId,
    COUNT(*) AS 'Total Line Items'
FROM InvoiceLine
GROUP BY InvoiceId