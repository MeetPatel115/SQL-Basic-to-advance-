--Step-1 Find the total sales per customer 
--ordery by is not allowed on cte but qou can use it main query
--step 2 : last order date
--step 3 : rank the customer based on total sales

with cte_total_sales as
(select customerid,
sum(sales) as total_sales
from Sales.Orders
group by CustomerID
),
cte_rank_totalsales as (
select 
CustomerID,
total_sales,
RANK() over(order by total_sales desc) as customer_rank
from cte_total_sales
),
cte_last_order as(
Select CustomerID,
Max(orderdate) as last_order
from Sales.Orders
group by CustomerID
),
cte_sgement_customer as (
select 
customerid,
total_sales,
case
	when total_sales>100 then 'High'
	when total_sales>50 then 'Medium'
	else 'Low'
end customer_segment
from cte_total_sales
)
--main query
select
c.customerid,
c.Firstname,
c.Lastname,
cte.total_sales,
clo.last_order,
customer_rank,
customer_segment
from Sales.Customers as c
left join cte_total_sales as cte
on c.CustomerID=cte.CustomerID
left join cte_last_order as clo
on c.CustomerID=clo.CustomerID
left join cte_rank_totalsales as crt
on c.CustomerID=crt.CustomerID
left join cte_sgement_customer as cs
on c.CustomerID=cs.CustomerID
order by cte.total_sales desc