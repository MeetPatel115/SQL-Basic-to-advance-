/* String function
Manipulation 

*/
--concat


Select first_name,
country,
CONCAT(	first_name, ' ',country) as name_country
from customers;



-- upperand lower function 

Select upper(first_name),
lower(country)
FROM customers;


-- trim 

Select first_name,
len(first_name) as Normal_Length,
len(trim(first_name)) as Length_after_trim,
trim(first_name),
len(first_name) - len(trim(first_name)) flag
FROM customers;

Select first_name,
len(first_name) as Length_name
FROM customers
WHERE first_name!=trim(first_name);

-- replace

select 'file.txt', REPLACE('file.txt','.txt','.csv');

--len 
Select first_name,
len(first_name) as Normal_Length,
len(trim(first_name)) as Length_after_trim
FROM customers;

---Left and Right in string


Select first_name,
LEFT(trim(first_name),2) as first_2_car,
RIGHT(trim(first_name),2) as last_2_car
from customers;


--substring
--not include the first charter from the name 
Select Trim(first_name),
SUBSTRING(Trim(first_name),2,len(first_name))
FROM customers;

