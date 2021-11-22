CREATE PROCEDURE AddressesUpdate
	@AddressId int,
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
UPDATE [Addresses]
SET AddressLine = @AddressLine,  
	AddressLine2 = @AddressLine2,  
	AddressType = @AddressType,  
	City = @City,
	PostalCode = @PostalCode,
	State = @State,
	Country = @Country
WHERE CustomerId = @CustomerId and AddressId = @AddressId
END