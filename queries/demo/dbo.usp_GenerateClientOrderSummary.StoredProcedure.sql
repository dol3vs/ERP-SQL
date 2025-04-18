USE [demo]
GO
/****** Object:  StoredProcedure [dbo].[usp_GenerateClientOrderSummary]    Script Date: 07-Apr-25 1:19:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GenerateClientOrderSummary]
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DEMO.dbo.ClientOrderSummary (ClientID, TotalOrders, TotalSpent)
    SELECT
        o.ClientID,
        COUNT(*) AS TotalOrders,
        SUM(o.TotalAmount) AS TotalSpent
    FROM Demo_ERP.dbo.Orders o
    GROUP BY o.ClientID;
END;
GO
