Select *
From Customers

SELECT DISTINCT Country FROM Customers;
SELECT DISTINCT MonyTransfere FROM Customers;
SELECT DISTINCT City FROM Customers;

SELECT COALESCE(NULL, 'default') AS non_null_value;

UPDATE Customers
SET FirstName = UPPER(FirstName);

SELECT FirstName FROM Customers;


/* preferred Payment Methods by Country*/
SELECT Country,
    MonyTransfere AS PreferredPaymentMethod,
    COUNT(*) AS UsageCount
FROM Customers
GROUP BY Country, MonyTransfere
ORDER BY Country, UsageCount DESC;

--Top Customers by Transaction Rate
SELECT Top 10 CustomerID, FirstName,LastName,Rate 
FROM Customers
ORDER BY Rate DESC  

-- Most Popular Cities for Transactions
SELECT  City,  COUNT(*) AS TransactionCount
FROM  Customers
GROUP BY  City
ORDER BY  TransactionCount DESC;

--Average Rate by Country
SELECT Country, 
    AVG(Rate) AS AverageRate
FROM Customers
GROUP BY Country
ORDER BY AverageRate DESC;

--This query groups ratings into ranges (1–2, 3–4, etc.) to analyze satisfaction distribution.

SELECT CASE 
        WHEN Rate BETWEEN 1 AND 2 THEN '1-2'
        WHEN Rate BETWEEN 3 AND 4 THEN '3-4'
        WHEN Rate BETWEEN 5 AND 6 THEN '5-6'
        WHEN Rate BETWEEN 7 AND 8 THEN '7-8'
        WHEN Rate BETWEEN 9 AND 10 THEN '9-10'
        ELSE 'Unknown'
    END AS RatingRange,COUNT(*) AS Count
FROM Customers
GROUP BY Rate
ORDER BY RatingRange;

--Top and Bottom Cities by Satisfaction
--Top Cities 

SELECT Top 10 City, AVG(Rate) AS AverageRate
FROM Customers
GROUP BY City
ORDER BY AverageRate DESC

--Bottom Cities:

SELECT Top 10 City, AVG(Rate) AS AverageRate
FROM Customers
GROUP BY City
ORDER BY AverageRate ASC

