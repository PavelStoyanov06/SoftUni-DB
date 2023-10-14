CREATE DATABASE People

CREATE TABLE Passports (
	PassportID INT PRIMARY KEY,
	PassportNumber NVARCHAR(255) NOT NULL
)

CREATE TABLE Persons (
	PersonID INT PRIMARY KEY,
	FirstName VARCHAR(255) NOT NULL,
	Salary MONEY NOT NULL,
	PassportID INT CONSTRAINT FK_PassportID FOREIGN KEY REFERENCES Passports(PassportID)
)

--Extra

INSERT INTO Passports (PassportID, PassportNumber)
	VALUES	(101, 'N34FG21B'),
			(102, 'K65LO4R7'),
			(103, 'ZE657QP2')

INSERT INTO Persons (PersonID, FirstName, Salary, PassportID)
	VALUES	(1, 'Roberto', 43300.00, 102),
			(2, 'Tom', 56100.00, 103),
			(3, 'Yana', 60200.00, 101)

SELECT
	pe.FirstName
	,pe.Salary
	,pa.PassportNumber
FROM Passports AS pa
JOIN Persons AS pe ON pa.PassportID = pe.PassportID
ORDER BY pe.FirstName