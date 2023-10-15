DELETE Bookings
FROM Tourists
INNER JOIN Bookings
ON Tourists.ID = Bookings.TouristID
WHERE Tourists.Name LIKE '%Smith%';

DELETE
FROM Tourists
WHERE Tourists.Name LIKE '%Smith%';