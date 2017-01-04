use S00165174SQLProject
go
create proc SQL4
as
select
PremisesCity, PremisesID
from 
PremisesTbl
WHERE 
AccountTotal = (select max(AccountTotal) from PremisesTbl)
