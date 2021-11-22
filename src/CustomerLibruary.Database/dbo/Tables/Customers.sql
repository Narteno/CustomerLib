CREATE TABLE [dbo].[Customers] (
    [CustomerId]           INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50)  NULL,
    [LastName]             NVARCHAR (50)  NOT NULL,
    [PhoneNumber]          BIGINT         NULL,
    [Email]                NVARCHAR (100) NULL,
    [Notes]                NVARCHAR (MAX) NOT NULL,
    [TotalPurchasesAmount] FLOAT (53)     NULL,
    CONSTRAINT [PK_CustomerId] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [CK_Customer_PhoneNumber] CHECK ([PhoneNumber] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    CONSTRAINT [CK_Email] CHECK ([Email] like '%_@__%.__%' AND patindex('%[^a-z,0-9,@,.,_,\-]%',[Email])=(0))
);

