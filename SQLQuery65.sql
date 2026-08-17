--View function
-- find the running total of sales for each month


with cte_monthly_summ as (
	SELECT 
	MONTH(ORDERDATE) AS ordermonth,
	sum(sales) as total_sales
	from Sales.Orders
	group by Month(orderdate)
)
select ordermonth,
total_sales,
sum(total_sales) over (order by ordermonth) as Running_total
from cte_monthly_summ