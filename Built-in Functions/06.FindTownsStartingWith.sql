SELECT
	TownID
	,[Name]
FROM Towns
WHERE LEFT([Name], 1) IN ('M', 'k', 'B', 'E')
ORDER BY [Name]