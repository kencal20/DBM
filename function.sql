

--scaler function
SELECT FIRSTNAME,UPPER(Person.FirstName),
LOWER(Person.FirstName)
FROM Person.Person

--SUBSTRING
SELECT firstname,SUBSTRING(Person.FirstName,1,3)
FROM Person.Person

SELECT CONCAT (SUBSTRING(Person.FirstName,1,3),
			   SUBSTRING(Person.LastName,1,3))
FROM Person.Person

SELECT TOP(10) firstname,CHARINDEX('A',firstName)
FROM Person.Person

--Extract files from left to right 0f main string
SELECT LEFT(firstname,2),
	   RIGHT(LastName,3)
	   FROM Person.Person

--Displaying a set of characters
SELECT CONCAT (LEFT(firstname,2), RIGHT(LastName,3))
			FROM Person.Person

--Displaying Lenght of a column
SELECT TOP(10) firstname,Len(firstName)
FROM Person.Person

--REVERSING OF Data in a particular column
SELECT REVERSE(firstname) 
FROM Person.Person


SELECT DISTINCT ProductID,MODIFIEDDATE,UNITPRICE,
SUM(UNITPRICE)
OVER
( PARTITION BY MODIFIEDDATE
ORDER BY PRODUCTID ASC
) AS A_PRODUCT_DAILY_SALES
FROM Sales.SalesOrderDetail ORDER BY MODIFIEDDATE


--Adding two datatypes together for view
--CONCAT
SELECT CONCAT('CSD',10) AS CONCAT

-- USING CAST
SELECT 'CSD CLASS' + CAST(10 AS VARCHAR) AS CAST

SELECT  'GHS' + CAST(SUM(UNITPRICE) AS  VARCHAR) AS CAST
FROM Sales.SalesOrderDetail

--USING CONVERT
SELECT 'CSD CLASS' + CONVERT(VARCHAR,10) AS CONVERTING

-- DATE functions
SELECT GETDATE()
SELECT CONVERT(VARCHAR,GETDATE())

SELECT DATEADD (mm,3,'2010-01-01');
SELECT DATEADD (dd,3,'2010-01-01');
SELECT CONVERT (VARCHAR, DATEADD (dd,3,'2010-01-01'));

SELECT MONTH(GETDATE());
SELECT MONTH('2010-01-01'));

SELECT DATEDIFF(yy,'2000-12-3',GETDATE());

--

SELECT FLOOR(UNITPRICE) FROM Sales.SalesOrderDetail;

SELECT UNITPRICE, CEILING(UNITPRICE) FROM Sales.SalesOrderDetail;

SELECT ROUND(UNITPRICE,2) FROM Sales.SalesOrderDetail;

SELECT TRY_CAST('CSD' AS INT ) AS RESULT
