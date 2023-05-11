SELECT 
    SUM(Total) AS '2009 SALES'
FROM Invoice
WHERE InvoiceDate LIKE '2009%'

SELECT 
    SUM(Total) AS '2011 SALES'
FROM Invoice
WHERE InvoiceDate LIKE '2011%'

SELECT 
    ROUND(SUM(Total),2) AS 'TOTAL SALES'
FROM Invoice
WHERE InvoiceDate LIKE '2011%' OR InvoiceDate Like '2009%'