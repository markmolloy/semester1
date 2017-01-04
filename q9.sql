use S00165174SQLProject
go
create proc SQL9
@X int
as
select KeyholderTbl.KeyholderID, KeyholderName, count(PremisesKeyholderTbl.PremisesID) 
from KeyholderTbl
inner join PremisesKeyholderTbl
on
KeyholderTbl.KeyholderID = PremisesKeyholderTbl.KeyholderID
where @X < (
select count(PremisesID)
from PremisesKeyholderTbl
)
group by KeyholderTbl.KeyholderID, KeyholderName
