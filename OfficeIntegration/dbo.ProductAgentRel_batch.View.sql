USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ProductAgentRel_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[ProductAgentRel_batch]
as
SELECT     Agents.AgentId, dbo.Products_Batch.ProductID
FROM         dbo.Products_batch CROSS JOIN
                      Agents_batch Agents





GO
