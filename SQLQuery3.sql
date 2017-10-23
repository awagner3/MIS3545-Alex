--Beaver Bakery
--Evan Lehrman, Ryan Beaton, Alexander Wagner

CREATE DATABASE BeaverBakeryDb;
GO

USE BeaverBakeryDb;
GO

CREATE TABLE Customer(
  CustomerID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  PhoneNumber int NOT NULL,
  Email varchar(50) NOT NULL,
  Address1 varchar(50) NOT NULL,
  Address2 varchar(50) NOT NULL,
  City varchar(50) NOT NULL,
  StateName varchar(50) NOT NULL,
  ZipCode int NOT NULL);

  CREATE TABLE Employee(
  EmployeeID bigint NOT NULL PRIMARY KEY,
  Title varchar(50) NOT NULL,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Salary int NOT NULL,
  DateofBirth int NOT NULL,
  PhoneNumber int NOT NULL,
  Email varchar(50) NOT NULL,
  Address1 varchar(50) NOT NULL,
  Address2 varchar(50) NOT NULL,
  City varchar(50) NOT NULL,
  StateName varchar(50) NOT NULL,
  ZipCode int NOT NULL,
  Hoursworked int NOT NULL);

  CREATE TABLE Product(
  ProductID bigint NOT NULL PRIMARY KEY,
  ProductName varchar(50) NOT NULL,
  ProductDescription varchar(50) NOT NULL,
  Category varchar(50) NOT NULL,
  COGS int NOT NULL,
  SalesPrice int NOT NULL,
  Nuts int NOT NULL,
  Vegan int NOT NULL,
  Vegetarian int NOT NULL,
  Gluten int NOT NULL,
  Soy int NOT NULL);

    CREATE TABLE Orders(
  OrderID bigint NOT NULL PRIMARY KEY,
  CustomerID int NOT NULL,
  EmployeeID int NOT NULL,
  ProductID int NOT NULL,
  OrderQuantity int NOT NULL,
  SalesAmount int NOT NULL);
  
  ALTER TABLE Orders ADD CONSTRAINT FK_Orders_CustomerID 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
GO
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_EmployeeID 
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
GO
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_ProductID 
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);
GO

 INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ProductID, OrderQuantity, SalesAmount	) VALUES 
(1,12,6,10,2,2.00),
(2,10,5,7,2,14.00),
(3,6,6,2,3,7.50),
(4,9,4,4,4,12.00),
(5,9,5,11,1,1.00),
(6,3,4,3,2,4.00),
(7,4,5,8,7,35.00),
(8,10,6,12,2,2.00),
(9,7,4,13,10,70.00),
(10,8,6,2,1,2.50),
(11,3,6,14,1,8.00),
(12,3,4,3,4,8.00),
(13,5,5,6,8,32.00),
(14,11,6,4,3,9.00),
(15,3,4,8,8,40.00),
(16,11,6,5,3,18.00),
(17,14,5,15,8,80.00),
(18,9,4,9,4,4.00),
(19,9,4,9,4,4.00),
(20,1,5,12,5,5.00),
(21,13,4,3,3,7.00),
(22,5,4,3,7,14.00),
(23,8,4,1,5,10.00),
(24,13,4,13,4,28.00),
(25,11,5,1,4,8);

 INSERT INTO Employee (EmployeeID, Title,	FirstName, LastName, Salary, Birthday, PhoneNumber, Email, Address,	ZipCode, City, State, Hours/Week) VALUES
 (1, 'Head Baker',	'Evan',	'Lehrman',100000,10/22/1995,8715728670,'elehrman@beaverbreadcompany.com	11 Babson College Drive	02481	Wellesley Hills	MA	40),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
SELECT * FROM Orders;




