USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[Agents_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE  view [dbo].[Agents_batch]
as
select 
NameID as Loginname,
NameID as AgentID,
Name as AgentName,
Extra1
 from LNKHHH.HHHDemo.dbo.AgentWarehouseNames AWN
 left outer join Amodat712.dbo.Agents A on A.AgentID = AWN.NameID
 where Sort = 1



GO
