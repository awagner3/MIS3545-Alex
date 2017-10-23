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

  ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customer 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
GO

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Employee
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
GO

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Product
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);
GO

  INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ProductID ,OrderQuantity, SalesAmount) VALUES 
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


INSERT INTO Customer( CustomerID,FirstName,LastName,PhoneNumber,Email,Address1,Address2,City,StateName,ZipCode) VALUES 
(1,'Huey','Konrad',2493811044,'hkonrad@bread.com','518 Homestead Drive','.','Villa Rica','GA',30180),
(2,'Monnie','Sletten',8767135534,'msletten@bread.com','33 Dogwood Street','.','Dundalk','MD',21222),
(3,	'Mikaela','Gast',6073149810,'mgast@bread.com','5 East East Lane','.','Saginaw','MI',48601),
(4,	'Etsuko','Ratchford',8872580861,'eratchford@bread.com','47 Harvard Dr.','.','Avon','IN',46123),
(5,'Nancie','Bohnsack',9792668169,'nbohnsack@bread.com','9379 East Rd.','Suite 208','Atlantic City','NJ',8401),
(6,	'Setsuko','Fyfe',8509173457,'sfyfe@bread.com','992 Randall Mill St.','.','Urbandale','IA',50322),
(7,	'Hugo','Madia',	9529096939,'hmadia@bread.com','3 Primrose Drive','.','Hope Mills','NC',28348),
(8,	'Rocky','Viviani',8490325362,'rviviani@bread.com','4 Academy Street','Box # 7','Asbury Park','NJ',7712),
(9,	'Loreen','Boeke',4741726051,'lboeke@bread.com','87 North Hilltop St.','.','Norcross','GA',30092),
(10,'Chi','Kaya',6287157691,'ckaya@bread.com','8006 Rockwell Ave.','.','Randallstown','MD',21133),
(11,'Rita','Blaisdell',7432782660,'rblaisdell@bread.com','150 Wrangler Street','.','Somerset','NJ',8873),
(12,'Georgiana','Quirion',7045252383,'gquirion@bread.com','71 1st Dr.','Apt. 16D','Fort Mill','SC',29708),
(13,'Zonia','Giroux',2749674918,'zgiroux@bread.com','514 Hawthorne Street','.','Jonesborough','TN',37659),
(14,'Janel','Eakin',3071673551,'jeakin@bread.com','7063 Creek Rd.','','Wilmington','MA',1887),
(15,'Bobby','Hellums',9937455410,'bhellums@bread.com','742 El Dorado St.','.','Rock Hill','SC',29730),
(16,'Daina','Truesdell',6800391523,'dtrusedell@bread.com','987 New Saddle Drive','.','Port Richey','FL',34668),
(17,'Janina','Schultz',6048298240,'jschultz@bread.com','819 E. Front St.','Apt. 7','Collegeville','PA',19426),
(18,'Hedy','Coco',3001517530,'hcoco@bread.com','351 Clinton Dr.','.','Dallas','GA',30132),
(19,'Pearl','Dowless',7983189113,'pdowless@bread.com','9884 Lakeview Avenue','.','Clarkston','MI',48348),
(20,'Lavonne','Hutton',6780177352,'lhutton@bread.com','980 Amherst Ave.','.','Great Falls','MT',59404),
(21,'Vonnie','Tobar',2840797448,'vtobar@bread.com','469 S. Stonybrook St.','.','Greensboro','NC',27405),
(22,'Ilona','Tarleton',8914094070,'ltarleton@bread.com','6 Buttonwood Lane','.','Lake Worth','FL',33460),
(23,'Milagros','Daddario',9798894800,'mdaddario@bread.com','89 Sutor Road','.','Saint Augustine','FL',32084),
(24,'Theresa','Pulaski',7975050549,'tpulaski@bread.com','7081 Addison Street','.','North Andover','MA',1845),
(25,'Kathyrn','Delee',5956744272,'kdelee@bread.com','129 Edgemont Street','.','Martinsville','VA',24112);


INSERT INTO Product( ProductID,ProductName,ProductDescription,Category,COGS,SalesPrice,Nuts,Vegan,Vegetarian,Gluten,Soy) VALUES
	(1,'Chocolate Chip Cookie','Cookie with chocolate chips','Cookies',0.66,2,0,0,1,1,0),
	(2,'Blueberry Muffin','Muffin with blueberries','Muffins',0.8,2.5,0,0,1,1,0),
	(3,'Sugar Cookie','Cookie with sugar','Cookies',0.66,2,0,0,1,1,0),
	(4,'Invisible Muffin','Muffin that is invisible lol','Muffins',1,3,0,0,0,1,0),
	(5,	'Sourdough','Sourdough bread','Bread',2,6,0,0,1,1,0),
	(6,	'Foccaci','Italian flat bread with herbs','Bread',1.3,4,0,0,1,1,0),
	(7,	'Apple Pie','Pie with apples in it','Pie',2.3,7,0,0,1,1,0),
	(8,	'Artisian Baguette','Classic baguette','Bread',1.75,5,0,0,1,1,0),
	(9,	'Sesame Bagel','Bagel with sesame seeds','Bread',0.3,1,0,0,1,1,0),
	(10,'Plain Bagel','Standard bagel','Bread',0.3,1,0,0,1,1,0),
	(11,'Everything Bagel','Bagel with sesame seeds, garlic, onions, poppy seeds, etc.','Bread',0.3,1,0,0,1,1,0),
	(12,'Cinnamon Sugar Bagel','bagel with cinnamon and sugar','Bread',0.3,1,0,0,1,1,0),
	(13,'Banana Cream Pie','Pie with banana cream','Pie',0.3,7,1,0,1,1,0),
	(14,'Coffee Cake','Classic coffee cake','Cake',2.75,8,1,0,1,1,0),
	(15,'Cheesecake','Classic cheese cake','Cake',3.4,10,0,0,1,1,0);

	 INSERT INTO Employee (EmployeeID, Title,	FirstName, LastName, Salary, Birthday, PhoneNumber, Email, Address1,	ZipCode, City, State, Hours/Week) VALUES
 (1, 'Head Baker','Evan','Lehrman',100000,10/22/1995,8715728670,'elehrman@beaverbreadcompany.com',	'11 Babson College Drive',	'02481',	'Wellesley Hills','MA',40),
 (2,'CFO','Alex', 'Wagner',80000,3/29/1996,9289735020,	'awagner@beaverbreadcompany.com',	'12 Babson College Drive', '02481',	'Wellesley Hills','MA',40),
 (3,'Business Development','Ryan','Beaton',80000,7/8/1996,7511912313,	'rbeaton@beaverbreadcompany.com',	'13 Babson College Drive',	'02481',	'Wellesley Hills',	'MA',40),
 (4,'Salesperson','Gurp',	'Singh',75000,1/28/1996,'3299113758',	'gsingh@beaverbreadcompany.com',	'262 Iroquois Dr.',	'02611',	'Boston',	'MA',40),
 (5,'Salesperson','Blake','Fontaine',75000,12/29/2001,2358674376,	'bfontaine@beaverbreadcompany.com',	'810 Williams Road',	'02835',	'Newton',	'MA',40),
 (6,'Salesperson','Samson','Seagon',75000,4/7/1987,5141292616,	'sseagon@beaverbreadcompany.com',	'246 Pennsylvania Ave.',	'02633',	'Braintree',	'MA',40),
 (7,'Baker','Patty','Goodwyn',40000,4/4/2003,3942750546,	'pgoodwyn@beaverbreadcompany.com',	'7626 Golden Star Street',	'02845',	'Boston',	'MA',40),
 (8,'Baker','Sheamus', 'OToole',40000,1/15/1993,6456519990,	'sotoole@beaverbreadcompany.com',	'810 Williams Road',	'02341',	'Boston',	'MA',40),
 (9,'Baker','Dirk', 'Nowitsky',20000,12/20/1993,5081357237,	'dnowitsky@beaverbreadcompany.com',	'20 Albany Dr.',	'02416',	'West Newton',	'MA',20),
 (10,'Baker','Michael','Jordan',20000,8/30/1999,3298248436,	'mjordan@beaverbreadcompany.com',	'7574 Main Ave.',	'02544',	'Wapole',	'MA'	,40),
 (11,'Baker','Tom','Brady',20000,4/6/1988,3254123812,	'tbready@beaverbreadcompany.com','7121 Henry Dr.',	'02752',	'Cambridge',	'MA',20),
 (12,'Baker','Rob',	'Gronkowski',20000,10/18/1965,9562540493,	'rgronkowski@beaverbreadcompany.com',	'896 Pumpkin Hill Road',	'03642',	'Worchester',	'MA',20),
 (13,'Packager','Trisha','Takinawa',20000,10/21/1993,2337047120,	'ttakinawa@beaverbreadcompany.com',	'9099 North Squaw Creek St.',	'02487',	'Wellesley',	'MA',40),
 (14,'Secretary','Willy','Wonka',25000,10/24/1985,3040815772,	'wwonka@beaverbreadcompany.com',	'43 Bedford Dr.',	'02489','Needham', 'MA',40);







