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

