CREATE DATABASE Movies

CREATE TABLE Directors (
	Id INT PRIMARY KEY IDENTITY,
	DirectorName NVARCHAR(255) NOT NULL,
	Notes NVARCHAR(255)
)

CREATE TABLE Genres (
	Id INT PRIMARY KEY IDENTITY,
	GenreName NVARCHAR(255) NOT NULL,
	Notes NVARCHAR(255)
)

CREATE TABLE Categories (
	Id INT PRIMARY KEY IDENTITY,
	CategoryName NVARCHAR(255) NOT NULL,
	Notes NVARCHAR(255)
)

CREATE TABLE Movies (
	Id INT PRIMARY KEY IDENTITY,
	Title NVARCHAR(255) NOT NULL,
	DirectorId INT CONSTRAINT FK_DirectorId FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
	CopyrightYear SMALLINT CONSTRAINT CK_CopyrightYear CHECK (CopyrightYear BETWEEN 0 AND 32767),
	[Length] INT NOT NULL,
	GenreId INT CONSTRAINT FK_GenreId FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
	CategoryId INT CONSTRAINT FK_CategoryId FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
	Rating INT CONSTRAINT CK_Rating CHECK(Rating BETWEEN 0 AND 100),
	Notes NVARCHAR(255)
)

INSERT INTO Directors (DirectorName, Notes)
	VALUES	('Chrostopher Nolan', 'Christopher Edward Nolan CBE (born 30 July 1970) is a British and American filmmaker.'),
			('Quentin Tarantino', 'Quentin Jerome Tarantino (born March 27, 1963) is an American film director, screenwriter, producer, actor, and author.'),
			('Stanley Kubrick', 'Stanley Kubrick (July 26, 1928 – March 7, 1999) was an American film director, producer, screenwriter and photographer.'),
			('James Cameron', 'James Francis Cameron CC (born August 16, 1954) is a Canadian filmmaker.'),
			('Steven Spielberg', 'Steven Allan Spielberg (born December 18, 1946) is an American film director, producer and screenwriter.')

INSERT INTO Genres (GenreName, Notes)
	VALUES	('Fantasy', 'Genre of speculative fiction set in a fictional universe, often inspired by real world myth and folklore'),
			('Science fiction', 'Science fiction is a genre of speculative fiction that deals with imaginative and futuristic concepts such as advanced science and technology, space exploration, time travel, parallel universes, and extraterrestrial life.'),
			('Historical fiction', 'Historical fiction is a literary genre in which a fictional plot takes place in the setting of particular real historical events.'),
			('Drama', 'Drama is a category or genre of narrative fiction (or semi-fiction) intended to be more serious than humorous in tone.'),
			('Comedy', 'Comedy may be divided into multiple genres based on the source of humor, the method of delivery, and the context in which it is delivered.')

INSERT INTO Categories (CategoryName, Notes)
	VALUES	('Popular', 'Most populaar movies.'),
			('Trending', 'Trending currently.'),
			('Lest viewed', 'Least watched movies.'),
			('Favourites', 'Favourited movies.'),
			('Director Cut', 'Director cut for movies.')

INSERT INTO Movies (Title, DirectorId, CopyrightYear, [Length],	GenreId, CategoryId, Rating, Notes)
	VALUES	('Oppenheimer', 1, 2023, 180, 3, 2, 80, 'A film about an american physicist.'),
			('Kill Bill', 2, 2003, 106, 5, 5, 85, 'An American martial arts film.'),
			('Paths of Glory', 3, 1957, 88, 4, 3, 96,'Based on the novel of the same name by Humphrey Cobb.'),
			('The Terminator', 4, 1984, 128, 1, 4, 100, 'It stars Arnold Schwarzenegger as the Terminator.'),
			('E.T. the Extra-Terrestrial', 5, 1982, 115, 2, 1, 99, 'It tells the story of Elliott, a boy who befriends an extraterrestrial.')