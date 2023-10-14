CREATE TABLE Manufacturers (
	ManufacturerID INT PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	EstablishedOn DATE NOT NULL
)

CREATE TABLE Models (
	ModelID INT PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	ManufacturerID INT CONSTRAINT FK_ManufacturerID FOREIGN KEY REFERENCES Manufacturers(ManufacturerID)
)

--Extra

INSERT INTO Manufacturers(ManufacturerID, [Name], EstablishedON)
	VALUES	(1, 'BMW', '1916-03-07'),
			(2, 'Tesla', '2003-01-01'),
			(3, 'Lada', '1966-05-01')

INSERT INTO Models (ModelID, [Name], ManufacturerID)
	VALUES	(101, 'X1', 1),
			(102, 'i6', 1),
			(103, 'Model S', 2),
			(104, 'Model X', 2),
			(105, 'Model 3', 2),
			(106, 'Nova', 3)

SELECT
	mo.[Name] AS ModelName,
	ma.[Name] AS ManufacturerName,
	ma.EstablishedOn
FROM Manufacturers as ma
LEFT JOIN Models as mo ON ma.ManufacturerID = mo.ManufacturerID
ORDER BY ModelName