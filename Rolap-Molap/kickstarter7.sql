Create database Kickstarter7
Use Kickstarter7

Drop database Kickstarter7

CREATE TABLE Dim_Project (
    Id_Project INT PRIMARY KEY,
    ProjectName VARCHAR(255)
);

CREATE TABLE Dim_Location (
    Id_Location INT PRIMARY KEY,
    LocationName VARCHAR(255)
);

CREATE TABLE Dim_State (
    Id_State INT PRIMARY KEY,
    State VARCHAR(255)
);

CREATE TABLE Dim_Date (
	Id_Date INT PRIMARY KEY,
	Created_At DATE,
	Launched_At DATE,
    Deadline DATE,
    State_Changed_At DATE,
);

CREATE TABLE Fact_Project_Campaign (
    Id_Date INT,
	Id_Location INT,
    Id_State INT,
    Id_Project INT,
    TotalProject INT,
    TotalBackers INT,
    ProjectGoal INT,
    FOREIGN KEY (Id_Date) REFERENCES Dim_Date(Id_Date),
	FOREIGN KEY (Id_Location) REFERENCES Dim_Location(Id_Location),
    FOREIGN KEY (Id_State) REFERENCES Dim_State(Id_State),
    FOREIGN KEY (Id_Project) REFERENCES Dim_Project(Id_Project)
);
