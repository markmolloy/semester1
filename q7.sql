use S00165174SQLProject
go
create proc SQL7
as
select ClientTbl.ClientID, ClientName, count(PremisesTbl.ClientID) as NumberPrems
from PremisesTbl
inner join ClientTbl
on
PremisesTbl.ClientID = ClientTbl.ClientID
group by ClientTbl.ClientID, ClientName