-- find total number of orders 
-- find total number of orders with each customer 
-- additionaly provides detailsuch as orderid, customerid, orderdate


select productid,
OrderID,
OrderDate,
count(*) over() as totalorders,
count(*) over(partition by customerid) as totalorders
from Sales.Orders

--find total number of suctomer 
-- additnally provide the detail customer id , orderdate


Select *,
count(*) over() totalcustomer,
count(Score) over() totalnumscore,
count(country) over() totalcountry
from Sales.Customers

/* find the percentage contribution of each prodct sales by total sales*/


select productid,
OrderID,
OrderDate,
Sales,
sum(sales) over() Totalsales,
round(cast(Sales as float)/ sum(sales) over() *100,2) percentagetotal
from Sales.Orders

/* find average sales for all product
then find the average sales ofthe product 
additonal details*/


select productid,
OrderID,
OrderDate,
Sales,
avg(coalesce(sales,0)) over() average,
avg(coalesce(sales,0)) over(Partition by productid) averageofproduct
--round(cast(Sales as float)/ sum(sales) over() *100,2) percentagetotal
from Sales.Orders