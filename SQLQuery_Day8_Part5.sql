create view vw_GetEname 
as select ename,sal from dbo.employee

SELECT * from vw_GetEname
Select * from dbo.employee

Update  vw_GetEname
   SET [ename] = 'Akshay'
      ,[sal] = 3000;

Insert into dbo.vw_GetEname values('Kannan', 2000)

drop view vw_GetEname

-------------------------------------------------------------------

create view vw_GetPetDetails as select id,title,author,pub from dbo.library;

select * from dbo.library;
select * from vw_GetPetDetails;

Insert into dbo.vw_GetPetDetails values(6,'Computational Thinking', 'French','APA');

Update vw_GetPetDetails SET pub = 'UI' where id=6;

drop view vw_GetPetDetails;

