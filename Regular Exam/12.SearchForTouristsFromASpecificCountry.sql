CREATE OR ALTER PROCEDURE usp_SearchByCountry (@country VARCHAR(50))
AS
BEGIN
	SELECT
		t.[Name]
		,t.PhoneNumber
		,t.Email
		,COUNT(*) AS CountOfBookings
	FROM Countries AS c
	JOIN Tourists AS t ON t.CountryId = c.Id
	JOIN Bookings AS b ON b.TouristId = t.Id
	WHERE c.[Name] = @country
	GROUP BY b.TouristId, t.[Name], t.PhoneNumber, t.Email
	ORDER BY t.[Name], COUNT(*) DESC
END