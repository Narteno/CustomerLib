USE [CustomerLib_Krasnoperov]
GO
IF OBJECT_ID('AddressesRead') IS NOT NULL  
BEGIN  
DROP PROC AddressesRead 
END  
GO  
CREATE PROCEDURE AddressesRead
	@AddressId int
AS  
BEGIN  
Select * FROM [Addresses]
WHERE AddressId = @AddressId
END
GO