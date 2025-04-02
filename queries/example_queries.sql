Use Office

-- 1. Total Sales by Client
SELECT ClientID, COUNT(*) AS Orders, SUM(TotalSum) AS TotalSales
FROM DocumentsOutMain
GROUP BY ClientID;

-- 2. Low Inventory Products
SELECT ProductID, InStock
FROM WarehouseStock
WHERE InStock < 10;

-- 3. Recent Client Activities
SELECT TOP 10 ActivityID, ClientID, DateTime, Remark
FROM Activities
ORDER BY DateTime DESC;

-- 4. Product Sales Summary
SELECT p.ProductName, SUM(ds.Quantity) AS TotalQty, SUM(ds.Price * ds.Quantity) AS TotalRevenue
FROM DocumentsOutSub ds
JOIN Products p ON ds.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;
