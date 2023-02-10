USE HowKteam 
GO

DECLARE @i INT = 0
DECLARE @n INT = 10000

WHILE (@i < @n)
BEGIN
	INSERT INTO dbo.CHUDE
	(
	    MACD,
	    TENCD
	)
	VALUES
	(   @i, -- MACD - nchar(4)
	    N'CNTT'  -- TENCD - nvarchar(30)
	    ) 
	SET @i += 1
END

SELECT *FROM dbo.CHUDE
