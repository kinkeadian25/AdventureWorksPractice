USE [AdventureWorksLT2019]
GO

/****** Object:  StoredProcedure [dbo].[GetCustomerPurchaseData]    Script Date: 10/20/2022 10:23:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetCustomerPurchaseData]
@CustomerName nvarchar(100) = NULL,
@OrderAbove money = NULL,
@OrderBelow money = NULL
AS
SELECT c.CustomerID, c.LastName + ', ' + c.FirstName AS CustomerName, c.EmailAddress, c.Phone, 
soh.SalesOrderID, soh.SubTotal, soh.TaxAmt, soh.TotalDue
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS soh
ON c.CustomerID = soh.CustomerID
WHERE (@CustomerName is null or c.LastName LIKE @CustomerName + '%') 
AND (@OrderAbove is null or TotalDue >= @OrderAbove) 
AND (@OrderBelow is null or TotalDue <= @OrderBelow)
ORDER BY c.LastName ASC, soh.TotalDue DESC
GO


