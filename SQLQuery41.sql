Select count(*) as num_of_order,
Datename(MONTH,CreationTime) as month_s 
from Sales.Orders
Group by Datename(MONTH,CreationTime)