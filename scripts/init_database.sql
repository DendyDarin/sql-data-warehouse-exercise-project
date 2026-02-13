/*
=============================================================
Database and Schemas Creation
=============================================================
Script Purpose:
    This script creates a new SQL Server database named 'DataWarehouseProject'. 
    If the database already exists, it is dropped and recreated. 
    Additionaly, the scripts set three schemas within the database: 'bronze', 
    'silver', and 'gold'.
    
WARNING:
    Running this script will drop the entire 'DataWarehouseProject' database if it exists, 
    permanently deleting all data within it. Proceed with caution and ensure you 
    have proper backups before executing this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouseProject' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehoueProject')
BEGIN
	ALTER DATABASE DataWarehouseProject SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouseProject;
END;
GO

-- Create Database named 'DataWarehouseProject'
CREATE DATABASE DataWarehouseProject;

USE DataWarehouseProject;

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

