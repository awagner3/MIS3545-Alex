
Use BeaverBreadCompany; 

/*Select * from all tables*/
Select * from Customer;

Select * from Product;

Select * from Orders;

Select * from Employee;


/*Query that uses Aggregate Function*/
Select sum(salary), Title
From Employee
Group by Title;

/*Inner Join Query*/
Select O.SalesAmount, O.ProductID, C.CompanyName
from Orders as O
Join Customer as C
on C.CustomerID = O.CustomerID;

/*Query that selects records from table using Outer Join function*/
Select C.CompanyName, O.OrderID
from Customer as C
Full Outer Join Orders as O
on O.customerID = C.customerID;

/*Query that uses subquery*/
Select ProductName, COGS
From product
where COGS >
	(Select Avg(COGS)
	from Product)
	Order by COGS;

