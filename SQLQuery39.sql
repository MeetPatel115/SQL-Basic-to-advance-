/* create the day in the specifice format*/


Select OrderId,
CreationTime,
cast(Day(CreationTime) as varchar)+'  ' + FORMAT(CreationTime,'ddd MMM')+
' Q'+DATENAME(quarter,CreationTime) +
cast(DATEPART(YEAR,CreationTime) as varchar)+ ' '+
cast(cast(CreationTime as time)as varchar) as CustomFormate
from Sales.Orders;


Select OrderId,
CreationTime,
cast(Day(CreationTime) as varchar)+'  ' + FORMAT(CreationTime,'ddd MMM')+
' Q'+DATENAME(quarter,CreationTime)+' '+
FORMAT(CreationTime,'yyyy hh:mm:ss tt') as CustomFormate
from Sales.Orders;