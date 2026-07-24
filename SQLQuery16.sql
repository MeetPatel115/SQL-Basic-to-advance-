/*this query where we use the having fuction to filter the data on aggregated data */
select
country,
count(first_name) as Number_of_customers,
sum(score) as Total_score
from customers
group by country
having sum(score)>800