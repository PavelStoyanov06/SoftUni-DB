ALTER TABLE Minions
ADD TownId INT CONSTRAINT FK_TownId FOREIGN KEY REFERENCES Towns (Id);