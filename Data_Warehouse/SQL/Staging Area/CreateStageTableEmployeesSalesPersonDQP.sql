IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'EmployeesSalesPersonDQP')	
	CREATE TABLE [dbo].[EmployeesSalesPersonDQP]
	(
	[BusinessEntityID] [int] NOT NULL,
	[NationalIDNumber] [nvarchar](15) NOT NULL,
	[LoginID] [nvarchar](256) NOT NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[MaritalStatus] [nchar](1) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[HireDate] [date] NOT NULL,
	[SalariedFlag] [bit] NOT NULL,
	[VacationHours] [smallint] NOT NULL,
	[SickLeaveHours] [smallint] NOT NULL,
	[SalesQuota] [money] NULL,
	[Bonus] [money] NOT NULL,
	[CommissionPct] [smallmoney] NOT NULL,
	DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE EmployeesSalesPersonDQP