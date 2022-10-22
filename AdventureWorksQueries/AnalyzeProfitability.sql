--Retrieve the cost, list price, and average selling price for each product
SELECT prod.ProductID, prod.Name, prod.StandardCost, prod.ListPrice, AVG(soh.UnitPrice) AS AverageSellingPrice
FROM SalesLt.Product AS prod
LEFT JOIN SalesLT.SalesOrderDetail AS soh
ON prod.ProductID = soh.ProductID
GROUP BY prod.ProductID, prod.Name, prod.StandardCost, prod.ListPrice
ORDER BY prod.ProductID;

--Retrieve products that have an average selling price that is lower than the cost
SELECT prod.ProductID, prod.Name, prod.StandardCost, prod.ListPrice, AVG(soh.UnitPrice) AS AverageSellingPrice
FROM SalesLt.Product AS prod
LEFT JOIN SalesLT.SalesOrderDetail AS soh
ON prod.ProductID = soh.ProductID
GROUP BY prod.ProductID, prod.Name, prod.StandardCost, prod.ListPrice
HAVING prod.StandardCost > AVG(soh.UnitPrice)
ORDER BY prod.ProductID;