IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSalesPerson')
BEGIN
	CREATE TABLE [dbo].[DimSalesPerson] (
		[SalesPersonKey] [int] IDENTITY(1,1) NOT NULL, 
		[SalesPersonID] [int] NULL, 
		[NationalIDNumber] [nvarchar](15) NOT NULL, 
		[LoginID] [nvarchar](256) NOT NULL, 
		[JobTitle] [nvarchar](50) NOT NULL, 
		[BirthDateKey] [int] NOT NULL, 
		[MaritalStatus] [nvarchar](10) NOT NULL, 
		[Gender] [nvarchar](10) NOT NULL, 
		[HireDateKey] [int] NOT NULL, 
		[SalariedFlag] [bit] NOT NULL, 
		[VacationHours] [smallint] NOT NULL, 
		[SickLeaveHours] [smallint] NOT NULL, 
		[SalesQuota] [money] NULL, 
		[Bonus] [money] NOT NULL, 
		[CommisionPct] [smallmoney] NOT NULL, 
		[EffectiveDate] [datetime] NOT NULL, 
		[ExpiredDate] [datetime] NULL, 
		[isCurrent] [nvarchar](3) NOT NULL, 
	CONSTRAINT [PK_DimSalesPerson] PRIMARY KEY CLUSTERED
	(
		[SalesPersonKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-SalesPersonID] ON [dbo].[DimSalesPerson]
	(
		[SalesPersonID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
END