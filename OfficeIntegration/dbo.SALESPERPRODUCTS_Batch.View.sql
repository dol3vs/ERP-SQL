USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[SALESPERPRODUCTS_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[SALESPERPRODUCTS_Batch] as
SELECT     TOP 100 PERCENT 
AgentID, 
ProductID, 
[Month], 
isnull(MonthlyTarget ,0) as MonthTarget,
isnull(MonthActual,0) AS MonthActual,
Isnull(PreviousMonth ,0) AS MonthActualPrevYear, 
isnull(perMonthly ,0) AS TargetCompletionPercentage

FROM        V_Targets_ProductsSaleStatistic
where Year = year(getdate())
order by AgentID 









GO
