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

