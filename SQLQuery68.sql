CREATE CLUSTERED columnstore INDEX idx_DBcustomer_cs
on Sales.dbcustomer

drop index [idx_DBcustomer_cs] on Sales.dbcustomer;
select *
from Sales.Customers


CREATE CLUSTERED COLUMNSTORE INDEX idx_DBcustomer_cs
ON Sales.dbcustomer
WITH (MAXDOP = 1);