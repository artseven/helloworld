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

--WHERE Clause Multi Column
SELECT *
FROM Person.Address
WHERE PostalCode = '91776' OR PostalCode = '94014'

--WHERE Clause Multi Column
SELECT *
FROM Person.Address
WHERE City = 'Berlin' AND PostalCode = '14111'

--WHERE Clause Multi Column
SELECT *
From Person.Address
WHERE PostalCode > '14111' AND PostalCode < '98296'

--Group By
SELECT City, PostalCode
FROM Person.Address
GROUP BY City, PostalCode
GO

