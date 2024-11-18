IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactCurrencyRate')	
	CREATE TABLE [dbo].[FactCurrencyRate](
		[DateKey] int NOT NULL, 
		[SourceCurrencyKey] int NOT NULL, 
		[DestinationCurrencyKey] int NOT NULL, 
		[AverageRate] money NOT NULL, 
		[EndOfDayRate] money NOT NULL, 
	 CONSTRAINT [PK_FactCurrencyRate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC,
		[SourceCurrencyKey] ASC,
		[DestinationCurrencyKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]