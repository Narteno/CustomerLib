CREATE PROCEDURE CustomersCreate  
	@FirstName nvarchar(50),  
	@LastName nvarchar(50),  
	@PhoneNumber bigint,  
	@Email nvarchar(100),
	@Notes nvarchar(max),
	@TotalPurchasesAmount float
AS  
BEGIN  
INSERT INTO Customers (  
			FirstName,  
			LastName,  
			PhoneNumber,  
			Email,
			Notes,
			TotalPurchasesAmount)  
VALUES (@FirstName,  
		@LastName,  
		@PhoneNumber,  
		@Email,
		@Notes,
		@TotalPurchasesAmount)  
DECLARE @CustomerId INT
SET @CustomerId = SCOPE_IDENTITY()  
SELECT *
FROM [dbo].[Customers]
WHERE CustomerId = @CustomerId
END