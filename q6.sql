use S00165174SQLProject
go
create proc SQL6
@pass varchar, @id int, @message varchar(100) output
as
begin try
update ClientTbl
set ClientPassword = @pass
where ClientID = @id
set @message = 'Password Changed'
end try
begin catch
set @message = 'Password Change Unsuccessful'
end catch