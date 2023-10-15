SELECT
	h.[Name] AS HotelName
	,r.Price
FROM Tourists AS t
JOIN Bookings AS b ON t.Id = b.TouristId
JOIN Rooms AS r ON r.Id = b.RoomId
JOIN Hotels AS h ON h.Id = b.HotelId
WHERE RIGHT(LOWER(t.[Name]), 2) <> 'ez'
ORDER BY r.Price DESC