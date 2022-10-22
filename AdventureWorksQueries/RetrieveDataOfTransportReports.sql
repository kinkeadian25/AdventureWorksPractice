--Retrieve a lsit of cities
SELECT DISTINCT City, StateProvince
FROM SalesLT.Address
ORDER BY City

--Retrieve the heaviest products
SELECT TOP (10) PERCENT WITH TIES Name
FROM SalesLT.Product
ORDER BY Weight DESC;