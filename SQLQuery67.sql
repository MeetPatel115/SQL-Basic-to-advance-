--Task : provide a view that combines detail from orders,products,cuatomers and employees
Create View Sales.V_order_detail as (
	Select 
	o.OrderID,
	o.OrderDate,
	p.Product,
	p.Category,
	coalesce(c.FirstName,'')+' '+ coalesce(c.LastName,'') as Customer_name,
	c.Country,
	coalesce(e.FirstName,'')+' '+ coalesce(e.LastName,'') as SalesPerson,
	e.Department,
	o.Sales,
	o.Quantity
	from Sales.Orders as o
	left join Sales.Products as p
	on o.ProductID=p.ProductID
	left join Sales.Customers as c
	on c.CustomerID=o.CustomerID
	left join Sales.Employees as e
	on e.EmployeeID = o.SalesPersonID
)