USE AdventureWorks2012
GO


-- SELECT Statement
SELECT *
FROM Person.Address
GO

--ORDER BY Statement
SELECT *
FROM Person.Address
ORDER BY PostalCode DESC
GO

-- ORDER BY Multi Columns
SELECT *
FROM Person.Address
ORDER BY StateProvinceID, PostalCode
GO

-- WHERE Clause
SELECT *
FROM Person.Address
WHERE PostalCode = '91776'
GO

--WHERE Clause
SELECT *
FROM Person.Address
WHERE City = 'Berlin'
GO
