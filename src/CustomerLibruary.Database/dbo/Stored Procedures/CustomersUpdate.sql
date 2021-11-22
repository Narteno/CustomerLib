CREATE PROCEDURE CustomersUpdate
	@CustomerId int,
	@FirstName nvarchar(50),  
	@LastName nvarchar(50),  
	@PhoneNumber bigint,  
	@Email nvarchar(100),
	@Notes nvarchar(max),
	@TotalPurchasesAmount float
AS  
BEGIN  
UPDATE Customers
SET FirstName = @FirstName,  
	LastName = @LastName,  
	PhoneNumber = @PhoneNumber,  
	Email = @Email,
	Notes = @Notes,
	TotalPurchasesAmount = @TotalPurchasesAmount
WHERE CustomerId = @CustomerId
END