/* Joins */


/* Inner joins*/


SELECT * 
FROM customers INNER JOIN orders 
ON customers.id =orders.customer_id

/* full joins*/


SELECT * 
FROM customers FULL JOIN
orders ON id=customer_id
select * from customers;


select * from orders;