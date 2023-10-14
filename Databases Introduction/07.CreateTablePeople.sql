CREATE TABLE People (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL (10, 2),
	[Weight] DECIMAL (10, 2),
	Gender CHAR CONSTRAINT CK_Gender CHECK (Gender = 'f' OR Gender = 'm') NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX)
)

INSERT INTO PEOPLE([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
	VALUES	('Tertius', 1010000100111011, 1.69, 48, 'm', '2008-10-18', NULL),
			('Pari', 1100101001100010, 1.50, 42, 'f', '1989-07-31', NULL),
			('Tilda', 1001111010101101, 0.95, 11.5, 'f', '2020-08-09', NULL),
			('Cusmaan', 1101100001001101, 1.84, 72,	'm', '1974-02-08', NULL),
			('Abdul Azis', 0100010011100100, 1.77, 94, 'm', '1981-09-17', NULL)