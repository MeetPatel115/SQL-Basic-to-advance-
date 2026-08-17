-- creating view from the tables

Create view Sales.v_monthly_summary as(
	SELECT 
	MONTH(ORDERDATE) AS ordermonth,
	sum(sales) as total_sales,
	count(Orderid) as TotalOrders,
	Sum(quantity) as TotalQuantites
	from Sales.Orders
	group by Month(orderdate)
);


--after creating the view query lets use the view table

select ordermonth,
total_sales,
sum(total_sales) over (order by ordermonth) as Running_total
from v_monthly_summary;


--drop the view

Drop view v_monthly_summary;