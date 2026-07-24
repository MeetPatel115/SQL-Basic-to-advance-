select
country,
count(first_name) as Number_of_customers,
sum(score) as Total_score
from customers
group by country