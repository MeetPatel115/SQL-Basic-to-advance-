/* Convert change the data types*/


Select 
Convert(Int , '123') as inttostr


/* i want the different between the current and previous date */

Select OrderID,
OrderDate,
lag(OrderDate) over (order by OrderDate) [previous order date],
DATEDIFF(day,lag(OrderDate) over (order by OrderDate),OrderDate) [Different between cur and precio]
From Sales.Orders