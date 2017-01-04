use S00165174SQLProject
go
create proc SQL2
@X smallint
as
select 
ClientName
from
ClientTbl
where ClientTypeID = @X