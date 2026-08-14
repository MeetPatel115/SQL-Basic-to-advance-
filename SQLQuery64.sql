--task : show the employee hierarcy by displaying each employee level within the organization
with cte_hirarcy_t as (
	--anchore query 

	select 
		Employeeid,
		FirstName,
		ManagerID,
		1 as Level
	from Sales.Employees
	where ManagerID is Null
	union all
	-- recursive query 

	select 
		e.Employeeid,
		e.FirstName,
		e.ManagerID,
		1+Level
	from Sales.Employees as e
	inner join cte_hirarcy_t as h
	on e.ManagerID=h.EmployeeID
	
)
select *
from cte_hirarcy_t