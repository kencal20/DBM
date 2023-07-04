SELECT  E.BusinessEntityID,CONCAT(FirstName,LastName) AS Fullname, E.JobTitle,P.Rate
FROM HumanResources.Employee E
JOIN 
HumanResources.EmployeePayHistory P
ON(E.BusinessEntityID = P.BusinessEntityID)
JOIN
Person.Person Pe
ON(E.BusinessEntityID = Pe.BusinessEntityID)

SELECT Rate FROM HumanResources.EmployeePayHistory

--OPERATORS

--UNION
SELECT FirstName,LastName FROM Person.Person
UNION 
SELECT FirstName,LastName FROM Sales.vIndividualCustomer

--UNION ALL
SELECT FirstName,LastName FROM Person.Person
UNION ALL
SELECT FirstName,LastName FROM Sales.vIndividualCustomer

--INTERSECT
SELECT FirstName,LastName FROM Person.Person
INTERSECT
SELECT FirstName,LastName FROM Sales.vIndividualCustomer

--EXCEPT
SELECT FirstName,LastName,MiddleName FROM Person.Person
EXCEPT
SELECT FirstName,LastName FROM Sales.vIndividualCustomer

--ISNUMERIC
SELECT ISNUMERIC(BusinessEntityID)
FROM HumanResources.Employee;

-- IIf
SELECT BusinessEntityID,SickLeaveHours,
IIF(SickLeaveHours >= 50,'No More Hours','More hours')
FROM HumanResources.Employee 


--RANK

--SELECT TOP(1000)

SELECT MIN(ListPrice),MAX(listPrice) FROM Production.Product;


SELECT Name,ListPrice FROM Production.Product
GROUP BY NAME ,ListPrice
HAVING MIN(ListPrice) = 0.00


SELECT Name,ListPrice FROM Production.Product
GROUP BY NAME
HAVING MAX(ListPrice) = 
(SELECT MAX(ListPrice) FROM Production.Product)