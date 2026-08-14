/* find the female employees whoes salry is greater than salery of male employee*/


select *
from Sales.Employees
where Gender='F' and 
Salary>(select min(Salary)
from Sales.Employees where Gender='M')


/* any oreatror*/


select *
from Sales.Employees
where Gender='F' and 
Salary> any(select Salary
from Sales.Employees where Gender='M')


/* find the feaml employee whoes salary is gretaer than any male employee*/
select *
from Sales.Employees
where Gender='F' and 
Salary> all(select Salary
from Sales.Employees where Gender='M')


select *
from Sales.Employees
where Gender='F' and 
Salary>(select max(Salary)
from Sales.Employees where Gender='M')