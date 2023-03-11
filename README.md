# SQL-Simple-Queries
# Basics of SQL
# some instructions from : https://www.mssqltips.com/sqlservertip/7186/sql-create-table-sql-server-management-studio/


# Step 1: install  SQL Server Management Studio (SSMS)

# Step 2: Check if you have permission to build a database
# type the following code in a query
# if the result is 1, you are good!
USE master;
GO
 
SELECT 
   SYSTEM_USER AS 'User'
   , HAS_PERMS_BY_NAME ('master', 'DATABASE', 'CREATE DATABASE') AS 'Permission Status';
GO

# Step 3: build a new database using
# by right click on Databases or:
USE master;
GO
CREATE DATABASE MyTestDB;
GO


# Step 4: Creat table

# Step 5: assign prior key