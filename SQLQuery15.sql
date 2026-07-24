/* this query is used with the havning and where function where pply on original data and having apply on aggrgated data
*/
select
country,
sum(score) as Total_score
from customers
where score>400
group by country
having sum(score)>800