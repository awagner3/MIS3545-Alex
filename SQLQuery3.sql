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
 (1, 'Head Baker','Evan','Lehrman',100000,10/22/1995,8715728670,'elehrman@beaverbreadcompany.com','11 Babson College Drive',	'02481',	'Wellesley Hills','MA',40),
 (2,'CFO','Alex', 'Wagner',80000,3/29/1996,9289735020,'awagner@beaverbreadcompany.com','12 Babson College Drive', '02481',	'Wellesley Hills','MA',40),
 (3,'Business Development','Ryan','Beaton',80000,7/8/1996,7511912313,'rbeaton@beaverbreadcompany.com','13 Babson College Drive',	'02481',	'Wellesley Hills',	'MA',40),
 (4,'Salesperson','Gurp',	'Singh',75000,1/28/1996,'3299113758','gsingh@beaverbreadcompany.com','262 Iroquois Dr.',	'02611',	'Boston',	'MA',40),
 (5,'Salesperson','Blake','Fontaine',75000,12/29/2001,2358674376,'bfontaine@beaverbreadcompany.com','810 Williams Road',	'02835',	'Newton',	'MA',40),
 (6,'Salesperson','Samson','Seagon',75000,4/7/1987,5141292616,'sseagon@beaverbreadcompany.com','246 Pennsylvania Ave.',	'02633',	'Braintree',	'MA',40),
 (7,'Baker','Patty','Goodwyn',40000,4/4/2003,3942750546,'pgoodwyn@beaverbreadcompany.com','7626 Golden Star Street',	'02845',	'Boston',	'MA',40),
 (8,'Baker','Sheamus', 'O'Toole',40000,1/15/1993,6456519990,'sotoole@beaverbreadcompany.com','810 Williams Road',	'02341',	'Boston',	'MA',40),
 (9,'Baker','Dirk', 'Nowitsky',20000,12/20/1993,5081357237,'dnowitsky@beaverbreadcompany.com','20 Albany Dr.',	'02416',	'West Newton',	'MA',20),
 (10,'Baker','Michael','Jordan',20000,8/30/1999,3298248436,'mjordan@beaverbreadcompany.com','7574 Main Ave.',	'02544',	'Wapole',	'MA'	,40),
 (11,'Baker','Tom','Brady',20000,4/6/1988,3254123812,'tbready@beaverbreadcompany.com','7121 Henry Dr.','02752','Cambridge',	'MA',20),
 (12,'Baker','Rob',	'Gronkowski',20000,10/18/1965,9562540493,'rgronkowski@beaverbreadcompany.com',	'896 Pumpkin Hill Road',	'03642',	'Worchester',	'MA',20),
 (13,'Packager','Trisha','Takinawa',20000,10/21/1993,2337047120,'ttakinawa@beaverbreadcompany.com',	'9099 North Squaw Creek St.',	'02487',	'Wellesley',	'MA',40),
 (14,'Secretary','Willy','Wonka',25000,10/24/1985,3040815772,'wwonka@beaverbreadcompany.com',	'43 Bedford Dr.',	'02489','Needham', 'MA',40);

SELECT * FROM Orders;




