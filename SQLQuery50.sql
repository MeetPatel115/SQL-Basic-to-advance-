/* in order to define the customer loyalty
we need to rank the customer based on the average day between the oreder*/
select CustomerID,
avg(numberofdays) avgday,
rank() over(order by coalesce(avg(numberofdays),9999)) as rank_customerLoyalty
from
(
Select 
orderid,
customerid,
orderdate,
lead(OrderDate)  over(partition by customerid order by customerid, orderdate) as nextordere,
datediff(day,orderdate,lead(OrderDate)  over(partition by customerid order by customerid, orderdate)) as numberofdays
from sales.orders
)t
group by CustomerID