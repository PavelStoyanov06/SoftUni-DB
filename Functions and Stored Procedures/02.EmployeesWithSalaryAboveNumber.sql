CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber (@SalaryLevel DECIMAL(18, 4))
AS
BEGIN
	SELECT
		FirstName
		,LastName
	FROM Employees
	WHERE Salary >= @SalaryLevel
END

EXEC usp_GetEmployeesSalaryAboveNumber
	@SalaryLevel = 60000