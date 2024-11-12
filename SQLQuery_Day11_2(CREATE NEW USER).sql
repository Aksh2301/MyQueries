-- Create login with password
CREATE LOGIN Db_NewUSerLogin WITH PASSWORD = 'Gtech@1781623';


CREATE LOGIN Db_NewUserLogin1 WITH PASSWORD = 'Gtech@1781623';

-- Switch to the database
USE SQLServer1;

-- Create a user associated with the login
CREATE USER AkshayUser2 FOR LOGIN Db_NewUserLogin1;

Grant select on dbo.employee to AkshayUser1;
grant update on dbo.employee to AkshayUser2;
REVOKE SELECT ON dbo.employee from AkshayUser1;
revoke update on dbo.employee from AkshayUser2;


