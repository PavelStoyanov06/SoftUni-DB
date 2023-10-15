CREATE OR ALTER FUNCTION ufn_GetSalaryLevel (@salary DECIMAL(18,4))
RETURNS VARCHAR(6)
AS
BEGIN
	IF @salary < 30000
		RETURN 'Low'
	ELSE IF @salary <= 50000
		RETURN 'Average'
	RETURN 'High'
END

SELECT
	Salary
	, dbo.ufn_GetSalaryLevel(Salary) AS [Salary Level]
FROM Employees