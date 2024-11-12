CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL UNIQUE,
    FirstName varchar(255) NOT NULL UNIQUE,
    Age int UNIQUE
);

DROP TABLE Persons;
INSERT INTO Persons VALUES(1,'KANNAN','KRISHNA',44);
INSERT INTO Persons VALUES(2,'GAYATHRI','GAYATHRI',47);
INSERT INTO Persons VALUES(3,'YAZ','AKSHAY',24);

--------------------------------------FOREIGN KEY--------------------------------------------
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL ,
    PersonID int FOREIGN KEY REFERENCES Persons(ID)
);

ALTER TABLE Orders
ADD CONSTRAINT ORDER_NO UNIQUE(OrderNumber);

INSERT INTO Orders VALUES(101,12345,1);
INSERT INTO Orders VALUES(102,12355,1);
INSERT INTO Orders VALUES(103,12357,2);
INSERT INTO Orders VALUES(104,12356,2);

SELECT * FROM Orders;
