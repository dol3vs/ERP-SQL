USE [demo_integration]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetOrderDetails]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_GetOrderDetails]
    @OrderID INT
AS
BEGIN
    SELECT 
        o.OrderID,
        c.FirstName + ' ' + c.LastName AS CustomerName,
        od.ProductID,
        p.ProductName,
        od.Quantity,
        od.UnitPrice
    FROM erp_demo..Orders o
    JOIN erp_demo..Customers c ON o.CustomerID = c.CustomerID
    JOIN erp_demo..OrderDetails od ON o.OrderID = od.OrderID
    JOIN erp_demo..Products p ON od.ProductID = p.ProductID
    WHERE o.OrderID = @OrderID;
END;
GO
