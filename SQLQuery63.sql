-- recursive cte 

--genrate a sqeuncec of number from 1- 20

with series as (
	--ancher query
	Select 
	1 as Mynumber
	union all

	-- recursive query
	Select 
	Mynumber+1
	from series
	where Mynumber<40

)
select *
from series
option (maxrecursion 60)