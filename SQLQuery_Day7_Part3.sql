Create PROCEDURE InsertProcEmployee

	-- Add the parameters for the stored procedure here
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	create table employee(empno int,ename varchar(20),job varchar(20),mqr varchar(20), birth_date date, sal int, comm int, dept_no int);
	
	insert into dbo.employee values(8369,'smith-','clerk',8902,'1990-12-18',800,null,20),(8499,'anya','salesman',8698,'1991-02-20',1600,300,30),
	(8521,'seth','salesman',8698,'1991-02-22',1250,500,30),(8566,'mahadevan','manager',8839,'1991-04-02',2985,null,20),
	(8654,'momin','salesman',8698,'1991-09-28',1250,1400,30),(8698,'bina','manager',8839,'1991-05-01',2850,null,30),
	(8839,'amir','president',null,'1991-11-08',5000,null,10),(8844,'kuldeep','salesman',8698,'1991-09-08',1500,0,30),
	(8882,'shiva','manager',8839,'1991-06-09',2450,null,10),(8886,'anoop','clerk',8888,'1993-01-12',1100,null,20),
	(8888,'scott','analyst',8566,'1992-12-09',3000,null,20),(8900,'jstin','clerk',8698,'1991-12-03',950,null,30),
	(8902,'fakir','analyst',8566,'1990-12-03',1300,null,20),(8934,'mita','clerk',8882,'1992-01-23',3000,null,10);

	select * from dbo.employee;
	select ename,sal,dept_no from dbo.employee where comm is null or comm=0;
	select empno,ename,sal*12 as Annual_salary from dbo.employee where comm is not null;
	select ename,job,sal from dbo.employee where job!='manager'; 
	select ename,job,sal from dbo.employee where job not in('manager');
	select sal,ename from dbo.employee where sal>1000 order by ename;
	select distinct mqr,sal from dbo.employee;
	select mqr,count(sal) as num from dbo.employee group by mqr;
RETURN