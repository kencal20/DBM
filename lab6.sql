USE AdventureWorks2022
USE AdventureWorksLT2022

SELECT * FROM SalesLT.Product

SELECT * FROM SalesLT.SalesOrderDetail


SELECT ProductID,Name,ListPrice 
FROM SalesLT.Product 
WHERE ListPrice >
(SELECT AVG(UnitPrice)
FROM SalesLT.SalesOrderDetail);


SELECT ProductID,Name,ListPrice
FROM SalesLT.Product
WHERE ProductID IN
(SELECT ProductID
FROM SalesLT.SalesOrderDetail
WHERE UnitPrice<100)
AND ListPrice >= 100
ORDER BY ProductID;

SELECT ProductID, Name, StandardCost, ListPrice,

(SELECT AVG(UnitPrice) 
FROM SalesLT.SalesOrderDetail AS SOD 
WHERE P.ProductID = SOD.ProductID) AS AvgSellingPrice
FROM SalesLT.Product AS P
ORDER BY P.ProductID;


SELECT ProductID, Name, StandardCost, ListPrice,
(SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail AS SOD 
WHERE P.ProductID = SOD.ProductID) AS AvgSellingPrice
FROM SalesLT.Product AS P

WHERE StandardCost >
(SELECT AVG(UnitPrice) 
FROM SalesLT.SalesOrderDetail AS SOD 
WHERE P.ProductID = SOD.ProductID)
ORDER BY P.ProductID;



SELECT SalesOrderID, CI.CustomerID, FirstName, LastName, TotalDue
FROM SalesLT.SalesOrderHeader AS SOH
CROSS APPLY dbo.ufnGetCustomerInformation(SOH.CustomerID) AS CI
ORDER BY SOH.SalesOrderID;




SELECT CA.CustomerID, FirstName, LastName, A.Addressline1, A.City
FROM SalesLT.Address AS A
JOIN SalesLT.CustomerAddress AS CA
ON A.AddressID = CA.AddressID
CROSS APPLY dbo.ufnGetCustomerInformation(CA.CustomerID) AS CI
ORDER BY CA.CustomerID;

	