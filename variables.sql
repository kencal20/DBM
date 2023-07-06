-- VARIABLES
DECLARE @Name VARCHAR(20) = 'Gall Erickson';
DECLARE @No NVARCHAR(11) = '2345';

SELECT *
FROM ContactDetails
WHERE FullName = @Name
  AND PhoneNumber = @No;

-- Declare variables
DECLARE @PersonName VARCHAR(100),
        @PhoneNumber NVARCHAR(20);

-- Check if cursor exists and close it if open
IF CURSOR_STATUS('global', 'MTN_CUSTOMERS') >= 0
BEGIN
    CLOSE MTN_CUSTOMERS;
    DEALLOCATE MTN_CUSTOMERS;
END;

-- Declare cursor
DECLARE MTN_CUSTOMERS CURSOR FOR
SELECT FullName,
       PhoneNumber
FROM ContactDetails;

OPEN MTN_CUSTOMERS;

PRINT '    MTN CUSTOMERS';
PRINT 'Customer Name     ' + '  Customer Phone Numbers';

-- Declare variables before the WHILE loop
FETCH NEXT FROM MTN_CUSTOMERS INTO @PersonName, @PhoneNumber;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @PersonName + '     ' + @PhoneNumber;
    FETCH NEXT FROM MTN_CUSTOMERS INTO @PersonName, @PhoneNumber;
END;

CLOSE MTN_CUSTOMERS;
DEALLOCATE MTN_CUSTOMERS;
