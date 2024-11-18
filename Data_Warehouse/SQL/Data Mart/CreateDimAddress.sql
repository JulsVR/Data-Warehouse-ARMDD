IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimAddress')
BEGIN
	CREATE TABLE [dbo].[DimAddress] (
		[AddressKey] [int] IDENTITY(1,1) NOT NULL, 
		[AddressID] [int] NOT NULL, 
		[Address] [nvarchar](122) NOT NULL, 
		[City] [nvarchar](50) NOT NULL, 
		[StateName] [nvarchar](50) NOT NULL, 
		[PostalCode] [nvarchar](15) NOT NULL, 
		[CountryName] [nvarchar](50) NOT NULL, 
		[EffectiveDate] [datetime] NOT NULL, 
		[ExpiredDate] [datetime] NULL, 
		[isCurrent] [nvarchar](3) NOT NULL, 
	CONSTRAINT [PK_DimAddress] PRIMARY KEY CLUSTERED
	(
		[AddressKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-AddressID] ON [dbo].[DimAddress]
	(
		[AddressID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
END