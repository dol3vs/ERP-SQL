USE [demo_integration]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Sales]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- In demo_integration
CREATE PROCEDURE [dbo].[sp_Load_Sales]
AS
BEGIN
    INSERT INTO demo.dbo.fact_Sales (OrderID, OrderDate, CustomerID, ProductID, Quantity, TotalAmount)
    SELECT 
        o.OrderID,
        o.OrderDate,
        o.CustomerID,
        od.ProductID,
        od.Quantity,
        od.Quantity * od.UnitPrice
    FROM erp_demo.dbo.Orders o
    JOIN erp_demo.dbo.OrderDetails od ON o.OrderID = od.OrderID;
END;
GO
