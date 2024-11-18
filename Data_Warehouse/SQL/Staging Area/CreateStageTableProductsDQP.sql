IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'ProductsDQP')	
	CREATE TABLE [dbo].[ProductsDQP]
	(
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
		[SellStartDate] [date] NULL,
		[SellEndDate] [date] NULL,
		DQP [nvarchar](100)
	)
ELSE
	TRUNCATE TABLE ProductsDQP