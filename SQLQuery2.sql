SELECT * 
FROM orders as o Left join
customers as c ON o.customer_id=c.id


/* use Full join */


SELECT * 
FROM orders as o Full JOIN
customers as c ON o.customer_id=c.id


/* Left anti join */

SELECT o.order_id,
o.sales,
c.id,
c.first_name
FROM customers as c LEFT JOIN
orders as o
ON o.customer_id=c.id
WHERE o.sales is NUll;


SELECT o.order_id,
o.sales,
c.id,
c.first_name
FROM customers as c 
RIGHT JOIN orders as o
ON c.id =o.customer_id
WHERE c.id is NULL


SELECT o.order_id,
o.sales,
c.id,
c.first_name
FROM orders as o 
LEFT JOIN customers as c
ON c.id =o.customer_id
WHERE c.id is NULL
SELECT * 
FROM customers


/* full ANTI JOIN*/



SELECT * 
FROM orders as o Full JOIN
customers as c ON o.customer_id=c.id
WHERE c.id is NULL OR o.customer_id is NULL


/* iNNEER JOIN WITHOUT USING INNNER JOIN */

SELECT * 
FROM orders as o Full JOIN
customers as c ON o.customer_id=c.id
WHERE c.id is not NULL and o.customer_id is Not NULL

 /* cross join */


 SELECT *
 FROM orders CROSS join 
 customers

SELECT * 
FROM orders;
SELECT * 
FROM customers;
