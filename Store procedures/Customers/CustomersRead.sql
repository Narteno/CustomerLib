USE [CustomerLib_Krasnoperov]
GO
IF OBJECT_ID('CustomersRead') IS NOT NULL  
BEGIN  
DROP PROC CustomersRead 
END  
GO  
CREATE PROCEDURE CustomersRead
	@CustomerId int
AS  
BEGIN  
SELECT * FROM [Customers]
WHERE CustomerId = @CustomerId
END
GO


