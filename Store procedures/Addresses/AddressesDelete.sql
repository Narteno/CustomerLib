USE [CustomerLib_Krasnoperov]
GO
IF OBJECT_ID('AddressesDelete') IS NOT NULL  
BEGIN  
DROP PROC AddressesDelete 
END  
GO  
CREATE PROCEDURE AddressesDelete
	@AddressId int
AS  
BEGIN  
DELETE FROM [Addresses]
WHERE AddressId = @AddressId
END
GO