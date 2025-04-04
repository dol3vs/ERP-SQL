USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProductsRel_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE        VIEW [dbo].[ClientProductsRel_batch]
AS
-- Variety Assignkey
SELECT 		ACCOUNTS_1.ACCOUNTKEY AS ClientID, 
		Convert(Varchar,ACCOUNTS_1.Assignkey)+'V'+Convert(Varchar,ACCOUNTS_1.VARIETYID) as ClientProductID,
		1 AS OrderBy
--select * 
From LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_1
where ACCOUNTS_1.Assignkey is not null and ACCOUNTS_1.VARIETYID <> 0
union 
-- Variety ACCOUNTKEY
SELECT 		ACCOUNTS_1.ACCOUNTKEY AS ClientID, 
		Convert(Varchar,ACCOUNTS_1.ACCOUNTKEY)+'V'+Convert(Varchar,ACCOUNTS_1.VARIETYID) as ClientProductID,
		0 AS OrderBy
--select * 
From LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_1
where ACCOUNTS_1.Assignkey is  null and ACCOUNTS_1.VARIETYID <> 0
union 
-- Variety ACCOUNTKEY
SELECT 		ACCOUNTS_1.ACCOUNTKEY AS ClientID, 
		Convert(Varchar,ACCOUNTS_1.ACCOUNTKEY)+'V'+Convert(Varchar,ACCOUNTS_1.VARIETYID) as ClientProductID,
		0 AS OrderBy
--select * 
From LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_1
where  ACCOUNTS_1.VARIETYID <> 0




GO
