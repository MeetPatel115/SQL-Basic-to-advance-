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

/* UNION ALL*/

SELECT FirstName,
LastName
FROM Sales.Customers
UNION ALL
SELECT FirstName,
LastName
FROM Sales.Employees


/* find the emplyees that are not the customer */

SELECT FirstName,
LastName
FROM Sales.Employees
Except
SELECT FirstName,
LastName
From Sales.Customers;

/* opposite of finding customer that doesnot have employees*/
SELECT FirstName,
LastName
From Sales.Customers
Except
SELECT FirstName,
LastName
FROM Sales.Employees;


