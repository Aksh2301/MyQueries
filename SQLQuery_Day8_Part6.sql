create table result(status varchar(20));

Create trigger trgrEmployee ON dbo.library
after insert
AS
begin
	insert into dbo.result(status) 
select * from dbo.result;