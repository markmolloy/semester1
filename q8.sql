use S00165174SQLProject
go
create proc SQL8
as
select PremisesID, PremisesCity
from PremisesTbl
where NoOfAlarms > 
(
	select avg(NoOfAlarms)
	from PremisesTbl
)