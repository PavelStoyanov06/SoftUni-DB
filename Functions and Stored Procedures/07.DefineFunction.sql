CREATE FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(255), @word NVARCHAR(255))
RETURNS BIT
AS
BEGIN
	DECLARE @result BIT = 1
	DECLARE @letter CHAR(1);
	DECLARE @counter INT = 1

	WHILE @counter <= LEN(@word)
	BEGIN
		SET @letter = SUBSTRING(@word, @counter, 1);
		IF CHARINDEX(@letter, @setOfLetters) = 0
		BEGIN
		  SET @result = 0;
		  BREAK;
		END;
		SET @counter = @counter + 1
	END
	RETURN @result
END