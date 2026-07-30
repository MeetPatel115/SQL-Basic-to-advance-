-- how many orders were placed each year?


SELECT Cast(Datetrunc(YEAR,OrderDate) as Date) as order_date,
count(*) as number_orders
FROM Sales.Orders
Group BY Datetrunc(YEAR,OrderDate)
union
SELECT Cast(Datetrunc(YEAR,OrderDate) as Date) as order_date,
count(*) as number_orders
FROM Sales.OrdersArchive
Group BY Datetrunc(YEAR,OrderDate);

-- or 
SELECT year(OrderDate) as year_date,
count(*) as number_orders
FROM Sales.Orders
Group BY year(OrderDate)
union
SELECT year(OrderDate) as year_date,
count(*) as number_orders
FROM Sales.OrdersArchive
Group BY year(OrderDate);


-- how many orders were placed each month?
SELECT Cast(Datetrunc(Month,OrderDate) as Date) as MonthOFORder,
count(*) as number_orders
FROM Sales.Orders
Group BY Datetrunc(MONTH,OrderDate)
union
SELECT Cast(Datetrunc(MONTH,OrderDate) as Date) as MonthOFORder,
count(*) as number_orders
FROM Sales.OrdersArchive
Group BY Datetrunc(MONTH,OrderDate);

