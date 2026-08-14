-- Show all the customer details and find the total order of each cuatomer


Select *
from sales.Customers as c
left join
(select customerid,
count(*) as total_sales
from sales.Orders
group by CustomerID)t
on c.CustomerID=t.CustomerID