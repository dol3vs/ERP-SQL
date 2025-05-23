USE [demo_integration]
GO
/****** Object:  View [dbo].[vw_OrderSummary]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_OrderSummary] AS
SELECT
    o.OrderID,
    o.OrderDate,
    o.ClientID,
    c.ClientName,
    o.TotalAmount,
    o.Status,
    dbo.fn_GetRegionByClient(o.ClientID) AS Region
FROM Demo_ERP.dbo.Orders o
JOIN Demo_ERP.dbo.Clients c ON o.ClientID = c.ClientID;
GO
