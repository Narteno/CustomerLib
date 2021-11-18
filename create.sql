CREATE DATABASE [CustomerLib_Krasnoperov]
GO
USE [CustomerLib_Krasnoperov]

CREATE TABLE [Customers]
(
	[CustomerId] INT IDENTITY(1,1) CONSTRAINT [PK_CustomerId] PRIMARY KEY,
	[FirstName] NVARCHAR(50),
	[LastName] NVARCHAR(50) NOT NULL,
	[PhoneNumber] BIGINT,
	[Email] NVARCHAR(100),
	[Notes] NVARCHAR(MAX) not null,
	[TotalPurchasesAmount] FLOAT 
)

alter table [Customers]
add constraint CK_Customer_PhoneNumber
check(PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

alter table [Customers]
add constraint CK_Email
check(Email like '%_@__%.__%'
	and patindex('%[^a-z,0-9,@,.,_,\-]%', Email) = 0)

CREATE TABLE [Addresses]
(
	[AddressId] INT IDENTITY(1,1) CONSTRAINT [PK_AddressId] Primary key,
	[CustomerId] int constraint [FK_CustomerId] foreign key ([CustomerId]) references [Customers] ([CustomerId]),
	[AddressLine] nvarchar(100) not null,
	[AddressLine2] nvarchar(100),
	[AddressType] nvarchar(100),
	[City] nvarchar(50) not null,
	[PostalCode] nvarchar(6) not null,
	[State] nvarchar(20) not null,
	[Country] nvarchar(20) not null
)

alter table [Addresses]
add constraint CK_AddressType
check(lower([AddressType]) in ('shipping', 'billing'))

alter table [Addresses]
add constraint CK_Country
check(lower([Country]) in ('united states', 'canada'))
