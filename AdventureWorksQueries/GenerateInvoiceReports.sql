--Retrieve Customer orders with addresses
SELECT cust.CompanyName,
       addr.AddressLine1, ISNULL(addr.AddressLine2, '') AS AddressLine2, addr.City, addr.StateProvince, 
       addr.PostalCode, addr.CountryRegion,
       soh.SalesOrderID, soh.TotalDue,
       custadd.AddressType
FROM SalesLT.Customer AS cust
JOIN SalesLT.SalesOrderHeader AS soh
    ON soh.CustomerID = cust.CustomerID
JOIN SalesLT.CustomerAddress AS custadd
    ON cust.CustomerID = custadd.CustomerID
JOIN SalesLT.Address AS addr
    ON addr.AddressID = custadd.AddressID
WHERE custadd.AddressType = 'Main Office';