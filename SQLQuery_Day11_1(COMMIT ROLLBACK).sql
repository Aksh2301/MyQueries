BEGIN TRANSACTION
UPDATE dbo.contacts set mgr=6665 where ename='president'
COMMIT;

select * from dbo.contacts

BEGIN TRANSACTION
UPDATE dbo.contacts set mgr=6665 where ename='salesman'
ROLLBACK;
--------------------------------------------------------------------
BEGIN TRANSACTION
DELETE from dbo.employee where ename='Kannan'
COMMIT;

select * from dbo.employee

BEGIN TRANSACTION
DELETE from dbo.employee where ename='Akshay'
ROLLBACK;