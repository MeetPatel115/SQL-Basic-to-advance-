/* ranking using the window function*/

Select 
	orderid,
	productid,
	sales,
	row_number() over(order by sales desc) SalesRank_row,
	rank() over(order by sales desc) SalesRank,
	dense_rank() over(order by sales desc) SalesRank_dense
from sales.Orders


/* rank the top higest sales of each product*/
select *
from(
Select 
	orderid,
	productid,
	sales,
	row_number() over(Partition by productid order by sales desc) SalesRank_row
from sales.Orders
)t where SalesRank_row=1

/* find the lowest 2 customer based on their sales*/
select *
from
(Select 
	CustomerId,
	sum(sales) total_sales,
	rank() over(order by sum(sales)) rankcustomer
from sales.Orders
group by CustomerID)t 
where rankcustomer<3


/* identify duplicates rows in the table in orderarchive
and return clean result without any duplicates*/

select *
from
(
select 
ROW_NUMBER() over(partition by orderid order by CreationTime) as id,
*
from Sales.OrdersArchive)t
where id =1

/*ntile*/
Select 
	orderid,
	productid,
	sales,
	ntile(1) over(order by sales desc) onebucket,
	ntile(2) over(order by sales desc) twobucket,
	ntile(3) over(order by sales desc) threebucket,
	ntile(4) over(order by sales desc) fourbucket
from sales.Orders

/* percentage based ranking */

select *
from
(select
	Product,
	price,
	CUME_DIST() over (order by price desc)as percentag_rank
from Sales.Products)t
where percentag_rank<0.4


select
	Product,
	price,
	CUME_DIST() over (order by price desc)as percentag_rank
from Sales.Products