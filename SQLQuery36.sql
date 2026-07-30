/* Show all the orders that are placed in February*/

SELECT Cast(Datetrunc(Month,OrderDate) as Date) as MonthOFORder,
count(*) as number_orders
FROM Sales.Orders
WHERE Datename(MONTH,OrderDate) ='February' 
Group BY Datetrunc(MONTH,OrderDate)
-- or
Select count(*) as num_of_order,
Month(OrderDate) as MonthofDate
From Sales.Orders
where Month(OrderDate) =2
Group by Month(OrderDate);

--or
Select count(*) as NumberOfOrder,
Datename(MONTH,OrderDate) as Month
From Sales.Orders
Where Datename(MONTH,OrderDate) ='February'
Group by Datename(MONTH,OrderDate);


Select OrderID,
OrderDate
From Sales.Orders;