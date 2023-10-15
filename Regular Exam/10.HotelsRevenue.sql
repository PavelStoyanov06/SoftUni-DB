SELECT
	h.[Name] AS HotelName
	,SUM(DATEDIFF(DAY, ArrivalDate, DepartureDate) * r.Price) AS HotelRevenue
FROM Bookings AS b
JOIN Hotels AS h ON h.Id = b.HotelId
JOIN Rooms AS r ON r.Id = b.RoomId
GROUP BY h.[Name]
ORDER BY SUM(DATEDIFF(DAY, ArrivalDate, DepartureDate) * r.Price) DESC