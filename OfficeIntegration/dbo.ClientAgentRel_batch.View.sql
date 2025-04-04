USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientAgentRel_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE View [dbo].[ClientAgentRel_batch]
as

SELECT     TOP 100 PERCENT ACCOUNTS_1.ACCOUNTKEY AS ClientID, 
ACCOUNTS_1.agent AS AgentID
FROM         LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_1 
where ACCOUNTS_1.ACCOUNTKEY is not null
and ACCOUNTS_1.agent <> 0

--dont includes the master agents
And ACCOUNTS_1.agent not in 
(Select AgentID From Amodat712.dbo.Agents Where Extra1 = '*')






GO
