USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[SALESPERAGENT_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[SALESPERAGENT_Batch] as
SELECT     TOP 100 PERCENT 
AgentID, 
right('0' + Convert(nvarchar,Month) + isnull(right(Convert(nvarchar,Year,2),2),left(convert(nvarchar,getdate(),12),2)),4) as SortDate,
[Month], 
isnull(MonthActual,0) AS Total, 
Isnull(PreviousMonth ,0) AS TotalPrevYear, 
isnull(perMonthly ,0) AS ChangePercent,
isnull(MonthlyTarget ,0) as SalesTarget
FROM        V_Targets_AgentsSaleStatistic
where Year = year(getdate())
order by AgentID, 
right('0' + Convert(nvarchar,Month) + isnull(right(Convert(nvarchar,Year,2),2),left(convert(nvarchar,getdate(),12),2)),4)





GO
