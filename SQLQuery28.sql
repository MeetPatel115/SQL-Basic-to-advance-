/* logical operator  
And 
Or 
not 
*/


SELECT *
FROM customers
WHERE country='USA' AND score>500;

SELECT *
FROM customers
WHERE country='USA' OR score>500;

SELECT *
FROM customers
WHERE NOT score<500;


/*Range operator

between  we use in this	
*/

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

/* MEMBERSHIP OPERATOR  

IN 
NOT IN
*/


SELECT *
FROM customers
WHERE country in ('USA','UK')



SELECT *
FROM customers
WHERE country NOT IN ('USA','UK')

/* SEARCH OPERATOR 

LIKE IS USED FOR SEARCHING PATTERN

% ,_ CAN BE USED*/



SELECT *
FROM customers
WHERE country LIKE 'U%'

SELECT *
FROM customers
WHERE country LIKE 'U_'

SELECT *
FROM customers
WHERE first_name LIKE '%r%'