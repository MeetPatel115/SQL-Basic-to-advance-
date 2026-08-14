/* rank the customer based on total amount of sales*/

select *,
rank () over(order by totalsales desc) as rank_ofcustomer
from 
(select CustomerID,
sum(sales) as totalsales
from Sales.Orders
group by CustomerID)t



Select c.CustomerID,
sum(sales) as total_sales
from Sales.Customers as c join 
Sales.Orders as o on c.CustomerID=o.CustomerID
group by o.CustomerID