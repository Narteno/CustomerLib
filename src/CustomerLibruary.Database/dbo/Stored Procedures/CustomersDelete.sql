CREATE PROCEDURE CustomersDelete
	@CustomerId int
AS  
BEGIN  
DELETE FROM [Customers]
WHERE CustomerId = @CustomerId
END