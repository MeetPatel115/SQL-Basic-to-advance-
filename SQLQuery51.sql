-- Calaculate moving average of sales for each product over time


select 
	OrderId,OrderDate,
	Productid,
	sales,
	avg(sales) over(partition by productid) as avgbyproduct,
	avg(sales) over(partition by productid order by orderdate) as MovingAvg,
	avg(sales) over(partition by productid order by orderdate
	rows between current row and 1 following) as Rollingavg
from Sales.Orders