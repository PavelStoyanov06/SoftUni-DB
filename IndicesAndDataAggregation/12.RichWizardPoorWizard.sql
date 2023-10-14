DECLARE @SumDifference MONEY = 0

DECLARE @MaxPeople INT = 0

SELECT
	@MaxPeople = COUNT(*)
FROM WizzardDeposits

DECLARE @Counter INT = 1

WHILE (@Counter < @MaxPeople)
BEGIN
	DECLARE @Diff MONEY = 0
	SELECT
		@Diff = dt.DepositAmount - wd.DepositAmount
	FROM WizzardDeposits AS wd
	JOIN(
		SELECT
			Id
			,DepositAmount
		FROM WizzardDeposits
		WHERE Id = @Counter
	) AS dt
	ON dt.Id = wd.Id - 1

	SET @SumDifference = @SumDifference + @Diff

	SET @Counter = @Counter + 1
END

SELECT @SumDifference AS SumDifference