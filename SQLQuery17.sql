/* we have to find the average score of country
doesnot include 0 
score and average score must be above 430*/

select country, AVG(score) as Average_score
from customers
where score!=0
Group by country
having avg(score)>430

