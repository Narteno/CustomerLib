CREATE PROCEDURE AddressesCreate
	@CustomerId int,
	@AddressLine nvarchar(100),  
	@AddressLine2 nvarchar(100),  
	@AddressType nvarchar(100),  
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@State nvarchar(20),
	@Country nvarchar(20)
AS  
BEGIN  
INSERT INTO [Addresses] (CustomerId, AddressLine, AddressLine2,  
			AddressType, City, PostalCode, State, Country)  
VALUES (@CustomerId, @AddressLine, @AddressLine2, @AddressType,
		@City, @PostalCode, @State, @Country)  
DECLARE @AddressId INT
SET @AddressId = SCOPE_IDENTITY()  
SELECT *
FROM [dbo].[Addresses]
WHERE AddressId = @AddressId
END