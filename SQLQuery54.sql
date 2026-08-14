/* select the product id , product name price and total number od sales*/
/* with sub suery*/

select ProductID,
Product,Price,
(select count(*) from sales.Orders) as total_sales
from Sales.Products