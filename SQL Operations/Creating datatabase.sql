-- Create Database
CREATE DATABASE TestDB
GO

-- Use Database
USE AdventureWorks2012
GO

--Create Table
CREATE TABLE TestTable (ID INT, Col1 VARCHAR(100), Col2 DATETIME)
GO

--Insert value
INSERT INTO TestTable (ID, Col1, Col2)
VALUES (1, 'First', GETDATE()-2);
INSERT INTO TestTable (ID, Col1, Col2)
VALUES (2, 'Second', GETDATE()-1);
INSERT INTO TestTable(ID, Col1, Col2)
VALUES (3, 'Third', GETDATE());
INSERT INTO TestTable (ID, Col1, Col2)
VALUES (4, 'Fourth', GETDATE()+1);
INSERT INTO TestTable (ID, Col1, Col2)
VALUES (5, 'Fifth', GETDATE()+2)
GO

--Update Rows
UPDATE TestTable
SET Col1 = 'New Value'
WHERE ID = 4
GO

--Select Table
SELECT *
FROM TestTable

--Delet Rows

DELETE 
FROM TestTable
WHERE ID = 4
