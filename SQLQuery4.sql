SELECT * 
FROM Sales.Customers;


SELECT *
FROM Sales.Employees;


-- combine all the  dataa from the employees and customers tables 
/* UNION */

SELECT FirstName,
LastName
FROM Sales.Customers
UNION
SELECT FirstName,
LastName
FROM Sales.Employees;

