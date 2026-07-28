/* orders are stored in seprate tables order and orderarchie so display the combine table 
withou dupilcates*/

SELECT * 
FROM Sales.Orders
UNION
Select * 
FROM Sales.OrdersArchive;


/* BEST PRACTICE USE THE COLUMNSNAM INSATADE OF STAR*/


SELECT 
       'Orders'  As SourceTable,
       [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION
SELECT
       'OrdersArchive'  As SourceTable,
       [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID;

