
-- VIEW CREATION
CREATE VIEW PERSONALCONTACT_VW
AS
SELECT P.Title,CONCAT(P.FirstName,'',P.LastName) AS FullName,
N.PhoneNumber
FROM  Person.Person as P
JOIN Person.PersonPhone as N
ON (P.BusinessEntityID = N.BusinessEntityID)
WHERE P.Title in ('Ms.','Mr.')

--Alter VIEW
ALTER VIEW PERSONALCONTACT_VW
AS
SELECT P.Title,CONCAT(P.FirstName,'.',MiddleName,'.',P.LastName) AS FullName,
N.PhoneNumber
FROM  Person.Person as P
JOIN Person.PersonPhone as N
ON (P.BusinessEntityID = N.BusinessEntityID)
WHERE P.Title in ('Ms.','Mr.')

--RENAME View
EXEC sp_rename 
@objname = "PERSONALCONTACT_VW",
@newname = "ContactDetails";

SELECT * FROM ContactDetails; 

