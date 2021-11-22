CREATE TABLE [dbo].[Addresses] (
    [AddressId]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]   INT            NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  NVARCHAR (100) NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [PostalCode]   NVARCHAR (6)   NOT NULL,
    [State]        NVARCHAR (20)  NOT NULL,
    [Country]      NVARCHAR (20)  NOT NULL,
    CONSTRAINT [PK_AddressId] PRIMARY KEY CLUSTERED ([AddressId] ASC),
    CONSTRAINT [CK_AddressType] CHECK (lower([AddressType])='billing' OR lower([AddressType])='shipping'),
    CONSTRAINT [CK_Country] CHECK (lower([Country])='canada' OR lower([Country])='united states'),
    CONSTRAINT [FK_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId])
);

