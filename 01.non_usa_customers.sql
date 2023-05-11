SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country 
FROM Customer
WHERE Country Is Not 'USA'