IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'FactCurrencyRateDQP')	
	CREATE TABLE [dbo].[FactCurrencyRateDQP]
	(
		[CurrencyRateID] [int] NOT NULL,
		[CurrencyRateDate] [date] NOT NULL,
		[FromCurrencyCode] [nchar](3) NOT NULL,
		[ToCurrencyCode] [nchar](3) NOT NULL,
		[AverageRate] [money] NOT NULL,
		[EndOfDayRate] [money] NOT NULL,
		DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE FactCurrencyRateDQP