--Retrieve customer details
SELECT * FROM SalesLT.Customer

--Retrieve Customer name data
SELECT Title, FirstName, MiddleName, LastName, Suffix 
FROM SalesLT.Customer

--Retrieve customer names and phone
SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer

