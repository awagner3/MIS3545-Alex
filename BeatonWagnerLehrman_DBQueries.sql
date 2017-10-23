
Use BeaverBreadCompany; 

/*Select * from all tables*/
Select * from Customer;

Select * from Product;

Select * from Order;

Select * from Employee;


/*Query that uses Aggregate Function*/
Select sum(salary), Title
From Employee
Group by Title;

/*Inner Join Query*/
Select O.SalesAmount, O.ProductID, C.CompanyName
from Order as O
Join Customer as C
on C.CustomerID = O.CustomerID;

/*Query that selects records from table using Outer Join function*/
Select C.CompanyName, O.OrderID
from Customer as C
Full Outer Join Order as O
on O.customerID = C.customerID;

/*Query that uses subquery*/
Select ProductName, CostOfProduction
From product
where CostOfProduction >
	(Select Avg(CostofProduction)
	from Product)
	Order by CostOfProduction;

