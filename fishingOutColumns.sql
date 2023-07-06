SELECT c.name AS ColumnName, t.name AS TableName
FROM sys.columns c
INNER JOIN sys.tables t ON c.object_id = t.object_id
WHERE c.name LIKE '%ListPrice%' OR c.name LIKE '%UnitPrice%';

SELECT c.name AS ColumnName, t.name AS TableName
FROM sys.columns c
INNER JOIN sys.tables t ON c.object_id = t.object_id
WHERE c.name in('ListPrice', 'UnitPrice');


SELECT DB_NAME() AS DB_NAME, c.name AS ColumnName, t.name AS TableName
FROM sys.columns c
JOIN sys.tables t ON c.object_id = t.object_id
WHERE c.name LIKE '%cost%'
ORDER BY t.name, c.name;


