-- VARIABLES
 DECLARE @Name VARCHAR(20)= 'Gall Erickson';
 Declare @No nvarchar(11) = 2345;

 SELECT * FROM ContactDetails WHERE fullname = @Name and PhoneNumber = @No 