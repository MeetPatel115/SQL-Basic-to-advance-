-- we use the correlated sub query with exists

-- show  the details of orders made by customers in germany

select *
from sales.Orders as o
where Exists(
select *
from sales.Customers as c where c.Country='Germany' and  o.CustomerID=c.CustomerID)