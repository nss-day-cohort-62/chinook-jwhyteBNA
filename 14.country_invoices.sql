SELECT 
    COUNT(*) AS Number_of_Invoices,
    BillingCountry
FROM Invoice
GROUP BY BillingCountry