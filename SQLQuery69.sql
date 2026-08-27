--heap stuscuter for the database 

use AdventureWorks2025;

-- creating heap sturcuter for the table 

Select *
into TransactionHistory_HP
from Production.TransactionHistory

select *
from TransactionHistory_HP

--creating rowstore index

Select *
into TransactionHistory_RS
from Production.TransactionHistory

select *
from TransactionHistory_RS

Create Clustered index idx_TranscationHistory_RS_PK
on TransactionHistory_Rs (TransactionID);


--creating columns store index

Select *
into TransactionHistory_CS
from Production.TransactionHistory

select *
from TransactionHistory_CS

Create Clustered ColumnStore index idx_TranscationHistory_CS_PK
on TransactionHistory_CS;

select


