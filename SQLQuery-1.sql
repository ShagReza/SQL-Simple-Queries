/*Check permission*/
USE master;
GO
 
SELECT 
   SYSTEM_USER AS 'User'
   , HAS_PERMS_BY_NAME ('master', 'DATABASE', 'CREATE DATABASE') AS 'Permission Status';
GO

/*Check permission-2*/
USE School;
GO
 
SELECT 
   SYSTEM_USER AS 'User'
   , HAS_PERMS_BY_NAME ('master', 'DATABASE', 'CREATE TABLE') AS 'Permission Status';
GO