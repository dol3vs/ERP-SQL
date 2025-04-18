USE [demo_integration]
GO
/****** Object:  View [dbo].[vw_ProductSales]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ProductSales] AS
SELECT
    od.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS TotalSold,
    SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM Demo_ERP.dbo.OrderDetails od
JOIN Demo_ERP.dbo.Products p ON od.ProductID = p.ProductID
GROUP BY od.ProductID, p.ProductName;
GO
