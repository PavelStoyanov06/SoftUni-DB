CREATE TABLE Teachers (
	TeacherID INT PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	ManagerID INT CONSTRAINT FK_ManagerID FOREIGN KEY REFERENCES Teachers (TeacherID)
)

--Extra

INSERT INTO Teachers (TeacherID, [Name], ManagerID)
	VALUES	(101, 'John', NULL),
			(102, 'Maya', 106),
			(103, 'Silvia', 106),
			(104, 'Ted', 105),
			(105, 'Mark', 101),
			(106, 'Greta', 101)

SELECT
	t1.[Name],
	t2.[Name] AS Manager
FROM Teachers AS t1
LEFT JOIN Teachers AS t2 ON t1.ManagerID = t2.TeacherID
ORDER BY t1.[Name]