SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION FunctTblEmployee
(
	@ResultVar int
)
RETURNS table
AS
RETURN
	SELECT 
	sal,empno,ename 
	FROM dbo.employee sal 
	WHERE sal=@ResultVar;

