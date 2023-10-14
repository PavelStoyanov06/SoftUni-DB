CREATE TABLE Users (
	Id INT PRIMARY KEY IDENTITY,
	Username VARCHAR(30) UNIQUE NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX),
	LastLoginTime TIME,
	IsDeleted VARCHAR(5) CONSTRAINT CK_IsDeleted CHECK(IsDeleted = 'false' OR IsDeleted = 'true')
)

INSERT INTO Users (Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES	('jerkywaterpolo', 'tW22QhbGx9Nu', 1010000100111011, '09:50:00', 'false'),
			('unfriendlyinspire', 'XtVsnN5HkwNe', 1100101001100010, '11:30:00', 'true'),
			('desireliterally', 'htANn6A2VgJL', 1001111010101101, '13:40:00', 'false'),
			('ornamentswoebegone', '3PU4hXRW4Dg9', 1101100001001101, '15:35:00', 'true'),
			('shoppingsesame', '82VWu4BU9QEK', 0100010011100100, '16:40:00', 'false')