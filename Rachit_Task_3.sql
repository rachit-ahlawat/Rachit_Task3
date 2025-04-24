use task_3;
select * from ecommerce;

SELECT * FROM ecommerce LIMIT 10;

SELECT DISTINCT Country FROM ecommerce;

SELECT Description, Quantity FROM ecommerce WHERE Quantity > 10;

SELECT * FROM ecommerce WHERE Country = 'United Kingdom';

SELECT * FROM ecommerce ORDER BY Quantity DESC;

SELECT Country, SUM(Quantity * UnitPrice) AS TotalSales
FROM ecommerce
GROUP BY Country
ORDER BY TotalSales DESC;

SELECT Description, SUM(Quantity) AS TotalSold
FROM ecommerce
GROUP BY Description
ORDER BY TotalSold DESC;

SELECT Description, SUM(Quantity * UnitPrice) AS Revenue
FROM ecommerce
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 5;

SELECT 
    AVG(UnitPrice) AS AvgPrice,
    SUM(Quantity) AS TotalQty,
    MAX(Quantity) AS MaxQty
FROM ecommerce;


CREATE VIEW UK_Sales AS
SELECT * FROM ecommerce WHERE Country = 'United Kingdom';

-- if working with large dataset
CREATE INDEX idx_country ON ecommerce(Country);


