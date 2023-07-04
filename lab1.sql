USE AdventureWorks2022
USE AdventureWorksLT2022

--CHALLENGE 1
 SELECT * FROM SalesLT.Customer;

 SELECT Title, FirstName, MiddleName, LastName, Suffix
 FROM SalesLT.Customer;

 SELECT Salesperson, Title + ' ' + LastName AS CustomerName, Phone
 FROM SalesLT.Customer;

-- CHALLENGE 2
 SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
 FROM SalesLT.Customer;
 SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
    CONVERT(nvarchar(30), OrderDate, 102) AS OrderDate
 FROM SalesLT.SalesOrderHeader;

 --CHALLENGE 3
 SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName AS CustomerName
 FROM SalesLT.Customer;
 SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
 FROM SalesLT.Customer;
 SELECT SalesOrderID, OrderDate,
     CASE
         WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
         ELSE 'Shipped'
     END AS ShippingStatus
 FROM SalesLT.SalesOrderHeader;