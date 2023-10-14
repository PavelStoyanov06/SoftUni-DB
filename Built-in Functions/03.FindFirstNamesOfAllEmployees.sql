SELECT
	FirstName
FROM Employees
WHERE DepartmentID IN (3, 10) AND CONVERT(SMALLINT, FORMAT(HireDate, 'yyyy', 'bg-BG')) BETWEEN 1995 AND 2005