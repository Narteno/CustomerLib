USE [CustomerLib_Krasnoperov]
GO
IF OBJECT_ID('CustomersDelete') IS NOT NULL  
BEGIN  
DROP PROC CustomersDelete 
END  
GO  
CREATE PROCEDURE CustomersDelete
	@CustomerId int
AS  
BEGIN  
DELETE FROM [Customers]
WHERE CustomerId = @CustomerId
END
GO