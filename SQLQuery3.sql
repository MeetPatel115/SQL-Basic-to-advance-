/* in this combine 4 tables to get the desire columns*/

Select o.OrderID,
	o.CustomerID,
	o.Sales,
	c.FirstName,
	c.LastName,
	p.Product, 
	p.Price,
	e.FirstName as Employee_name

From Sales.Orders as o 
Left join Sales.Customers as c
On o.CustomerID=c.CustomerID
Left join Sales.Products as p
On o.ProductID=p.ProductID
Left join Sales.Employees as e
ON o.SalesPersonID=e.EmployeeID;


select * from Sales.Orders;