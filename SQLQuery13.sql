/* THIS SQL QUERY IS FOR THE WINDOW VALUE FUNCTION*/


--ANALYZE THE MONTH OVER MONTH PERFORMANCE BY FINDING THE PERCENATAGE CHANGE 
--IN SALES BETWEEN THE CURRENT AND PREVIOUS 
select
*,
round(cast((currentmonthsales-previousmonth) as float)/previousmonth*100,1) percentage_change
from
(
	SELECT
	month(orderdate) as month,
	lag(sum(sales)) over(order by month(orderdate)) previousmonth,
	sum(sales) as currentmonthsales
	from Sales.Orders
	group by month(orderdate)
)t