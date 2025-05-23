USE [demo_integration]
GO
/****** Object:  View [dbo].[vw_Orders_Enriched]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Orders_Enriched] AS
SELECT
    o.OrderID,
    c.ClientName,
    a.AgentName,
    o.OrderDate,
    o.TotalAmount,
    o.Status
FROM Demo_ERP.dbo.Orders o
JOIN Demo_ERP.dbo.Clients c ON o.ClientID = c.ClientID
LEFT JOIN Demo_ERP.dbo.Agents a ON c.ClientID % 5 = a.AgentID; -- Simulated join
GO
