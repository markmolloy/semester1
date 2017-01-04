use S00165174SQLProject
go
create proc SQL10
as
select ClientID, ClientName
from ClientTbl
inner join ClientTypeTbl
on 
ClientTbl.ClientTypeID = ClientTypeTbl.ClientTypeID
where ClientTypeTbl.ClientTypeDescription = 'High Level'

except

select ClientTbl.ClientID, ClientName
from ClientTbl
inner join PremisesTbl
on
ClientTbl.ClientID = PremisesTbl.ClientID
where PremisesCity = 'Sligo'