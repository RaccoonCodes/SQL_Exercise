CREATE TABLE Individuals(
	IndividualID int NOT NULL IDENTITY PRIMARY KEY,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Phone varchar(50)
);

CREATE TABLE Groups(
	GroupID int NOT NULL IDENTITY PRIMARY KEY,
	GroupName varchar(20) NOT NULL,
	Dues money NOT NULL DEFAULT 0
	CHECK (Dues >= 0)
);

CREATE TABLE GroupMembership (
    GroupID int,
    IndividualID int,
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
    FOREIGN KEY (IndividualID) REFERENCES Individuals(IndividualID)
);

