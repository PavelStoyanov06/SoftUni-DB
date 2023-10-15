CREATE OR ALTER FUNCTION udf_RoomsWithTourists(@name VARCHAR(40))
RETURNS INT
AS
BEGIN
	DECLARE @result INT = 0

	SELECT
		@result = SUM(b.AdultsCount + b.ChildrenCount)
	FROM Bookings AS b
	JOIN Rooms AS r ON r.Id = b.RoomId
	WHERE r.[Type] = @name
	GROUP BY b.RoomId

	RETURN @result
END

SELECT dbo.udf_RoomsWithTourists ('Double Room')