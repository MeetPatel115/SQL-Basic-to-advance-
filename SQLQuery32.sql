-- date function

Select CreationTime,
DATETRUNC(day,creationTime) as day_t,
DATENAME(year,CreationTime) as year_name,
DATENAME(MONTH,CreationTime) as  month_cr,
DATENAME(day,CreationTime),
DATENAME(hour,CreationTime),
DATEpart(year,CreationTime)as year_name,
Datepart(MONTH,CreationTime) as month_cr
from Sales.Orders;

-- present the sales for ecery month

SELECT Datetrunc(month,CreationTime) as CreattionTime,
count(*) as number_orders
FROM Sales.Orders
Group BY Datetrunc(month,CreationTime);