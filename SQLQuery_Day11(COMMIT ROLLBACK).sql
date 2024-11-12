BEGIN TRANSACTION
INSERT INTO dbo.library(id,title, author) VALUES (203,'Finance', 'John Doe');
COMMIT;

BEGIN TRANSACTION
INSERT INTO dbo.library(id,title, author) VALUES (209,'Finance ', 'John Doe');
ROLLBACK;

delete from dbo.library where id=200;
UPDATE dbo.library set price=400 where id=11;
select * from dbo.library
----------------------------------------------------------------
