USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[SALESPERCLIENT_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[SALESPERCLIENT_Batch]
AS
select distinct
ClientID,
isnull(MonthActual,0) as Total,
right('0' + Convert(nvarchar,Month) + isnull(right(Convert(nvarchar,Year,2),2),left(convert(nvarchar,getdate(),12),2)),4) as SortDate,
Month, 
Isnull(PreviousMonth ,0) AS TotalPrevYear, 
isnull(perMonthly ,0) AS ChangePercent,
isnull(MonthlyTarget ,0) as SalesTarget
from 
V_Targets_ClientsSaleStatistic
where  Year = Year(Getdate())



GO
