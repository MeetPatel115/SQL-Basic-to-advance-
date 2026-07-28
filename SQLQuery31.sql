/* intersect */


/* Find employees who are employees */

SELECT FirstName,
LastName
FROM Sales.Employees
Intersect
SELECT FirstName,
LastName
FROM Sales.Customers;