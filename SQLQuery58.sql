/* correleated sub query */


/* show all the customer details and find the	total number of orders of each customer */


select *,
(select count(*) from Sales.Orders as o where o.CustomerID=c.CustomerID) total_sales
from Sales.Customers as c