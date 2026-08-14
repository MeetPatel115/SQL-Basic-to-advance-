/* Task : find the product whoes price is greater than the average price */
select *
from Sales.Products
	where price>(
	Select AVG(price)
	from Sales.Products)


/* with help of window function */
select * 
from
	(
	select 
	productid,
	price,
	avg(price) over () as AvgPrice
	from sales.Products)t
where price> AvgPrice