CREATE PROCEDURE usp_GetTownsStartingWith (@Starter NVARCHAR(255))
AS
BEGIN
	SELECT
		[Name] AS Town
	FROM Towns
	WHERE LEFT([Name], LEN(@Starter)) = @Starter
END

EXEC usp_GetTownsStartingWith
	@Starter = 'B'