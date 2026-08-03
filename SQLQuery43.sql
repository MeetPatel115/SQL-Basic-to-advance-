Select OrderDate,
ISDATE(OrderDate) as is_date,
case when IsDate(OrderDate)=1 then cast(OrderDate as Date)
	ELse '2000-01-01'
end NeworderDate
from 
(
	Select '2025-08-02' as OrderDate Union
	Select '2025-04-02' as OrderDate Union
	Select '2025-08-22' as OrderDate Union
	Select '2025-07-23' as OrderDate Union
	Select '2025-08' as OrderDate 
)t