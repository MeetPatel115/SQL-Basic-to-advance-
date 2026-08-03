Select count(*) as num_of_order,
Datename(MONTH,CreationTime) as month_s 
from Sales.Orders
Group by Datename(MONTH,CreationTime)


Select FORMAT(CreationTime,'MMM YY') as oreder_date,
count(*) as num_of_order
from Sales.Orders
Group by FORMAT(CreationTime,'MMM YY')