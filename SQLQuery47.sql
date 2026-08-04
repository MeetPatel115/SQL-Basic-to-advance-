/* window function */


/* this is used to aggeragete the values and also keeping all the info*/

select productid,
sum(sales) as totalSalesprodut
from Sales.Orders
group by ProductID

/* find the total sales across all orders with orderid and ordeer date*/

select productid,
OrderID,
OrderDate,
sum(sales) over() as totalSalesprodut
from Sales.Orders

/* in this above aggreageted function we cannot aad the other info like order date orderid nd all 
for that wwe have to use the window finction*/

select productid,
OrderID,
OrderDate,
sum(sales) over(Partition by ProductID) as totalSalesprodut
from Sales.Orders

/* total sales for each product and total sale s for all product*/


select productid,
OrderID,
OrderDate,
sales,
Sum(sales) over () as total_sales,
sum(sales) over(Partition by ProductID) as totalSalesByProdut
from Sales.Orders

/* find the totalsele for each combination of product and order status*/

select productid,
OrderID,
OrderDate,
sales,
OrderStatus,
Sum(sales) over () as total_sales,
sum(sales) over(Partition by ProductID) as totalSalesByProdut,
sum(sales) over(Partition by ProductID, OrderStatus) as totalSalesByProdutandstatus
from Sales.Orders


/* order by in window function*/

/* rank each oreder sales from highest to lowest and also provide orderid order date*/

select productid,
OrderID,
OrderDate,
sales,
Rank() over(order by sales desc) RankSales
from Sales.Orders


/* this is for the sub set of the window frame*/


select productid,
OrderID,
OrderDate,
sales,
OrderStatus,
sum(Sales) over(Partition by OrderStatus order by OrderDate 
Rows between current row and 2 following ) sales_after2,
sum(Sales) over(Partition by OrderStatus order by OrderDate 
Rows between 2 preceding and current row) Sales_2before,
sum(Sales) over(Partition by OrderStatus order by OrderDate) Sales_e
from Sales.Orders



/* rank the customer based on total sales*/


Select 
CustomerID,
sum(sales) TotalSales,
Rank() over(order by sum(sales) desc) RankSales
from Sales.Orders
Group by CustomerID