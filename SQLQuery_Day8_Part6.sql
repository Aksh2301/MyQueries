create table result(status varchar(20));

Create trigger trgrEmployee ON dbo.library
after insert
AS
begin
	insert into dbo.result(status) values('active')  ENDINSERT INTO library (id, title, author, type, pub, qty, price) VALUES (10, 'AKSHAY VIOLA Vol 1', 'AK', 'DS', 'McGraw', 4, 123);
select * from dbo.result;