CREATE TABLE Students (
	StudentID INT PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL
)

CREATE TABLE Exams (
	ExamID INT PRIMARY KEY,
	[Name] NVARCHAR(255)
)

CREATE TABLE StudentsExams (
	StudentID INT CONSTRAINT FK_StudentID FOREIGN KEY REFERENCES Students (StudentID),
	ExamID INT CONSTRAINT FK_ExamID FOREIGN KEY REFERENCES Exams (ExamID),
	PRIMARY KEY (StudentID, ExamID)
)

--Extra

INSERT INTO Students (StudentID, [Name])
	VALUES	(1, 'Mila'),
			(2, 'Toni'),
			(3, 'Ron')

INSERT INTO Exams (ExamID, [Name])
	VALUES	(101, 'SpringMVC'),
			(102, 'Neo4j'),
			(103, 'Oracle 11g')

INSERT INTO StudentsExams (StudentID, ExamID)
	VALUES	(1, 101),
			(1, 102),
			(2, 101),
			(3, 103),
			(2, 102),
			(2, 103)

SELECT
	s.[Name] AS Student
	,e.[Name] AS Exam
FROM StudentsExams AS se
JOIN Students AS s ON s.StudentID = se.StudentID
JOIN Exams AS e ON e.ExamID = se.ExamID
ORDER BY Student