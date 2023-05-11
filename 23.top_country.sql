SELECT 
    MAX(total_sum) AS TotalSales,
    BillingCountry
FROM (
    SELECT 
        SUM(Total) AS total_sum,
        BillingCountry
    FROM Invoice 
    GROUP BY BillingCountry
)