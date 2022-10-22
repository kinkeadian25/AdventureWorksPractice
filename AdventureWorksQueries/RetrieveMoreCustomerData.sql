--Retrieve a list of customers and their orders
SELECT cust.CompanyName, cust.FirstName, cust.LastName,
       soh.SalesOrderID, soh.TotalDue
FROM SalesLT.Customer AS cust
LEFT JOIN SalesLT.SalesOrderHeader AS soh
    ON cust.CustomerID = soh.CustomerID
ORDER BY soh.SalesOrderID DESC;

--Retrieve a list of customers with no address
SELECT c.CompanyName, c.FirstName, c.LastName, c.Phone
FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
WHERE ca.AddressID IS NULL;