CREATE PROCEDURE AddressesRead
	@AddressId int
AS  
BEGIN  
Select * FROM [Addresses]
WHERE AddressId = @AddressId
END