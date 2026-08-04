/* APPLYING CASE STATMENT 
IN THIS WE HAVE TO APPLY DATA FRASNFORMATION TECHNIQUE 
WHERE WE USE TO GIVE TOTAL SALES GRATER THAN 50 HIGH , THEN MEDIUM AND LOW
*/
select 
price_range,
sum(Sales) as Total_sales
	from(
	SELECT 
	OrderID,
	Sales,
	case
		when Sales>50 then 'High'
		when Sales>20 then 'Medium'
		else 'Low'
	end as price_range
	FROM Sales.Orders
)t
group by price_range
order by Total_sales desc


/* case stament for the mapping the values */

 
SELECT 
EmployeeID,
FirstName,
LastName,
Gender,
CASE 
	WHEN Gender='M' then 'MALE'
	else 'FEMALE'
end
as Gender_full
FROM Sales.Employees

/* retrival customer info with abberation*/
SELECT 
CustomerID,
FirstName,
CASE 
	WHEN country='Germany' then 'Ge'
	WHEN country='USA' then 'Us'
	else 'n/a'
end as country
from Sales.Customers

/* quick format for the case where every functon depend on sigle columns'*/

SELECT 
CustomerID,
FirstName,
CASE country
	WHEN 'Germany' then 'Ge'
	WHEN 'USA' then 'Us'
	else 'n/a'
end as country
from Sales.Customers
