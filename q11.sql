use S00165174SQLProject
go
create proc SQL11
@ClientType smallint
as
select ClientID, ClientName
from ClientTbl as C
where NoOfKeyHolders > (
	select avg(NoOfKeyHolders)
	from ClientTbl
	where ClientTypeID = @ClientType
	)