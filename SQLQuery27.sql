/* Comparsion operator 
=,
<> or !=
< and <=,
> and >=
retrive all customer from germany */

/* this method where we compare with value a static answer like germany in this case*/


SELECT * 
FROM customers
WHERE country = 'Germany'



SELECT * 
FROM customers
WHERE country <> 'Germany'


SELECT * 
FROM customers
WHERE score < 500


SELECT * 
FROM customers
WHERE score>=500