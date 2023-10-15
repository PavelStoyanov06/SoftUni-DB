CREATE OR ALTER PROCEDURE usp_GetEmployeesFromTown (@TownName NVARCHAR(255))
AS
BEGIN
	SELECT
		e.FirstName
		,e.LastName
	FROM Employees AS e
	JOIN Addresses AS a ON a.AddressID = e.AddressID
	JOIN Towns AS t ON t.TownID = a.TownID
	WHERE t.[Name] = @TownName
END

EXEC usp_GetEmployeesFromTown
	@TownName = 'Sofia'