IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
	CREATE TABLE [dbo].[DimProduct] (
		[ProductKey] [int] IDENTITY(1,1) NOT NULL, 
		[ProductNumber] [nvarchar](25) NOT NULL, 
		[Name] [nvarchar](50) NULL, 
		[FinishedGoodsFlag] [bit] NULL, 
		[Color] [nvarchar](15) NULL, 
		[SafetyStockLevel] [smallint] NULL, 
		[ReorderPoint] [smallint] NULL, 
		[StandardCost] [money] NULL, 
		[ListPrice] [money] NULL, 
		[Size] [nvarchar](5) NULL, 
		[SizeUnitMeasureName] [nvarchar](50) NULL, 
		[Weight] [decimal](8, 2) NULL, 
		[WeightUnitMeasureName] [nvarchar](50) NULL, 
		[DaysToManufacture] [int] NULL, 
		[ProductLine] [nvarchar](10) NULL, 
		[Class] [nvarchar](10) NULL, 
		[Style] [nvarchar](10) NULL, 
		[ProductCategoryName] [nvarchar](50) NULL, 
		[ProductSubcategoryName] [nvarchar](50) NULL,
		[SellStartDate] [date] NOT NULL,
		[SellEndDate] [date] NULL,
		[EffectiveDate] [datetime] NOT NULL, 
		[ExpiredDate] [datetime] NULL, 
		[isCurrent] [nvarchar](3) NOT NULL, 
	CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-ProductNumber] ON [dbo].[DimProduct]
	(
		[ProductNumber] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
END