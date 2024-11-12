
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION InsertFunctEmployee
(
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar int

	-- Add the T-SQL statements to compute the return value here
	SELECT @ResultVar = (SELECT sal FROM dbo.employee sal WHERE sal.ename = 'smith-');

	-- Return the result of the function
	RETURN @ResultVar

END
GO

