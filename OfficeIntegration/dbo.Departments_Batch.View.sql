USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[Departments_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE           View [dbo].[Departments_Batch]
as
SELECT   top 100 percent  
ITEMSORTCODE AS DepartmentID,
SORTCODENAME AS DepartmentName
FROM         LNKHHH.HHHDemo.dbo.ITEMSORTNAMES ITEMSORTNAMES_1

--where ITEMSORTCODE  between 100 and 120 -- and ITEMSORTCODE not in(17,22,25,50)

order by ITEMSORTCODE








GO
