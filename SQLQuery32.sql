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

-- eomonth gives the last day of month 

SELECT OrderID,
CreationTime,
EOMONTH(CreationTime),
--start of month
-- we use cast function to see what are imp like you can set to date to see date not time and set time to se time not date
cast(DATETRUNC(month,CreationTime) as Date) as start_of_month,
cast(CreationTime as Time) as start_of_month
FROM Sales.Orders;
