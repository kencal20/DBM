SELECT  E.BusinessEntityID,CONCAT(FirstName,LastName) AS Fullname, E.JobTitle,P.Rate
FROM HumanResources.Employee E
JOIN 
HumanResources.EmployeePayHistory P
ON(E.BusinessEntityID = P.BusinessEntityID)
JOIN
Person.Person Pe
ON(E.BusinessEntityID = Pe.BusinessEntityID)

