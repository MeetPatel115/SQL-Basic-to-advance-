--topic is cte 

-- common table exectuoon it create a temporrarl table to use it multiple time like creating a sub query that we use miltiple times


--Step-1 Find the total sales per customer 
--ordery by is not allowed on cte but qou can use it main query

with cte_total_sales as
(select customerid,
sum(sales) as total_sales
from Sales.Orders
group by CustomerID
)
--main query
select
c.customerid,
c.Firstname,
c.Lastname,
cte.total_sales
from Sales.Customers as c
left join cte_total_sales as cte
on c.CustomerID=cte.CustomerID
order by cte.total_sales desc