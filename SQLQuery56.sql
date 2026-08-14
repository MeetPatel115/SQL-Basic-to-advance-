/* show the detail of orders made by customer in germany*/

select *
from Sales.Orders
where CustomerID in (
select CustomerID
from Sales.Customers
where Country='Germany')


/* other method*/


select *
from Sales.Orders as o left join
Sales.Customers as c 
on o.CustomerID=c.CustomerID
where c.Country='Germany'