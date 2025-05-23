USE [demo_integration]
GO
/****** Object:  View [dbo].[vw_ProductInventory]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ProductInventory] AS
SELECT
    p.ProductID,
    p.ProductName,
    p.Category,
    p.StockQty,
    ISNULL(SUM(od.Quantity), 0) AS TotalOrdered,
    p.StockQty - ISNULL(SUM(od.Quantity), 0) AS AvailableStock
FROM Demo_ERP.dbo.Products p
LEFT JOIN Demo_ERP.dbo.OrderDetails od ON p.ProductID = od.ProductID
GROUP BY
    p.ProductID,
    p.ProductName,
    p.Category,
    p.StockQty;
GO
