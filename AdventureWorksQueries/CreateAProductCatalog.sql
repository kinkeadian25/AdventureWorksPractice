--Retrieve product info by category
SELECT parcat.Name AS ParentCategory, subcat.Name AS SubCategory, prod.Name AS ProductName
FROM SalesLT.ProductCategory parcat
JOIN SalesLT.ProductCategory as subcat
    ON parcat.ProductCategoryID = subcat.ParentProductCategoryID
JOIN SalesLT.Product as prod
    ON prod.ProductCategoryID = subcat.ProductCategoryID
ORDER BY ParentCategory, SubCategory, ProductName;