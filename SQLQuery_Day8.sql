
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE InsertProcPets
AS
    -- Insert statements for procedure here
	create table pets(no int,name varchar(20),owner varchar(20),species varchar(20), sex varchar(10))
	insert into pets values(1,'claws','gwen','cat','m'),(2,'fang','benny','dog','m'),(3,'bowser','diane','dog','m'),(4,'chirpy','gwen','bird','f'),
	(5,'whistler','gwen','bird',null),(6,'slim','benny','snake','m'),(7,'puffball','diane','hamster','f'),(8,'angel','benny','dog','f'),
	(9,'rober','gwen','cat','f');
	
	select * from pets;
	select * from pets where sex='m';
	select owner,species from pets;
	select * from pets where sex='m' and species='dog';
	select * from pets where species in ('snake','bird');
GO
