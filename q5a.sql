use S00165174SQLProject
go
create proc SQL5a
as
select distinct PremisesTbl.PremisesID, PremisesCity
from PremisesTbl
inner join PremisesAccountDetailsTbl
on PremisesTbl.PremisesID = PremisesAccountDetailsTbl.PremisesID
where AlarmCharge > 0