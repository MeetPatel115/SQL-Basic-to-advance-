Select CustomerID,
Score,
COALESCE(score,0) score2,
AVG(score) OVER() as average_score,
AVG(coalesce(score,0)) OVER() as average_score
from Sales.Customers