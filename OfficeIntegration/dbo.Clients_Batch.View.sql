USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[Clients_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE                  VIEW [dbo].[Clients_Batch]
AS
SELECT  distinct   TOP 100 PERCENT 
		ACCOUNTS_1.ACCOUNTKEY AS ClientID, 
		--ACCOUNTS_1.assignkey as MainClientID,
		--isnull(ParentClients.IsParent,0) as IsParent,
		'' as MainClientID,
		'' as IsParent,
		ACCOUNTS_1.FULLNAME AS ClientName,
		ACCOUNTS_1.ADDRESS+' '+ACCOUNTS_1.CITY  AS Address, 
		ACCOUNTS_1.Zip,
		LEFT(ACCOUNTS_1.PHONE,30) AS Phone, 
		LEFT(ACCOUNTS_1.SPHONE,30) AS Mobile,
		LEFT(ACCOUNTS_1.FAX, 30) AS Fax, 
		LEFT(ACCOUNTS_1.EMail, 30) AS Mail, 
		CONVERT(decimal(18,4), CONVERT(int, ACCOUNTS_1.BALANCE) * - 1) AS OpenDebt, 
		CONVERT(decimal(18,4), ACCOUNTS_1.TFTALDISCOUNT) AS Discount, 
		isnull(ACCOUNTS_1.CUSTOMERNOTE,'') AS Notes, 
		Case when ACCOUNTS_2.MAXOBLIGO is null then CONVERT(decimal(18,4), ACCOUNTS_1.MAXOBLIGO) else CONVERT(decimal(18,4), ACCOUNTS_2.MAXOBLIGO) end AS Credit, 
		LEFT(ACCOUNTS_1.CITY, 15) AS City, 
		CONVERT(decimal(18,4), CONVERT(decimal(18,4), ACCOUNTS_1.BALANCE) * - 1 + ACCOUNTS_1.OBLIGO) AS UsedCredit, 
		CONVERT(decimal(18,4), dbo.FUTURE_CHECKS.FUTURE_CHECKS) AS FuturePayments, 
		case when ACCOUNTS_1.MAINACCOUNT = '30' then 1 else
		Case when ACCOUNTS_1.VARIETYID <> 0 then 2 else 0 end end /*+ isnull(ParentClients.Parm,0)*/ as Params,
		--ISNULL(dbo.V_Plist.PRICELISTNUMBER, 999) AS PriceListID, 
		'999' AS PriceListID,
        CONVERT(nvarchar(40), ACCOUNTS_1.CREDITTERMSCODE) AS PaymentTermsID, 
		case when ACCOUNTS_1.Vatexampt = 0 then  CompanyDefenitions.VatPrc else '0' end AS  Vat,
		'' as TextColor,
		ACCOUNTS_1.ACCOUNTKEY as BonusID,
		ACCOUNTS_1.VARIETYID as extra30,
		ACCOUNTS_1.assignkey as extra27,
		ACCOUNTS_1.Agent as Extra28,
		CREDITTERMS.details as Extra29,
		ACCOUNTS_1.SortGroup as Extra1,
				case when CONVERT(decimal(18,4), CONVERT(int, ACCOUNTS_1.BALANCE) * - 1) > 0 then 1 else 
		CASE WHEN ACCOUNTS_1.dumi = '3' THEN '-1' ELSE 		 0  end end   AS StatusID
--SRO_Clients.LastDocDate as [LastActivityDate],
--CONVERT(decimal(9, 2),SRO_Clients.LastTotal) as [LastDocTotal],
--SRO_Clients.LastDocDate as [LastDocDate]
--ACCOUNTS_1.BANKCODE as Bank,
--ACCOUNTS_1.BRANCHCODE as Branch,
--ACCOUNTS_1.BANKACCOUNT as AccountNum
	FROM         LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_1 
--	Left Outer JOIN	SROIntegration..SRO_Clients on ACCOUNTS_1.accountkey = SRO_Clients.ClientID
	INNER JOIN                      dbo.V_CreditTurms ON ACCOUNTS_1.CREDITTERMSCODE = dbo.V_CreditTurms.CreditCode 
		
LEFT OUTER JOIN  dbo.FUTURE_CHECKS ON ACCOUNTS_1.ACCOUNTKEY COLLATE Hebrew_CI_AS = dbo.FUTURE_CHECKS.ACCOUNTKEY 
		LEFT OUTER JOIN dbo.V_Plist ON ACCOUNTS_1.ACCOUNTKEY = dbo.V_Plist.ClientID 
left outer join LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_2
		on ACCOUNTS_1.assignkey = ACCOUNTS_2.ACCOUNTKEY
		left outer join ParentClients on ACCOUNTS_1.ACCOUNTKEY = ParentClients.ParentKey
		cross join LNKHHH.HHHDemo.dbo.CompanyDefenitions CompanyDefenitions
		--left outer join (select Kef as Cid,Note as Extra1 from LNKHHH.HHHDemo.dbo.ExtraNotes where noteID = 4) extras
		--on ACCOUNTS_1.ACCOUNTKEY = extras.cid
		left outer join LNKHHH.HHHDemo.dbo.CREDITTERMS CREDITTERMS on ACCOUNTS_1.CREDITTERMSCODE = CREDITTERMS.CreditTermsCode
where  ACCOUNTS_1.ACCOUNTKEY is not null and ACCOUNTS_1.FULLNAME is not null 
--and ACCOUNTS_1.SortGroup between '415' and '440' 
and ACCOUNTS_1.dumi <> 3






GO
