USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[PaymentTerms_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE          View [dbo].[PaymentTerms_batch]
as
select PaymentTermsID, PaymentTerms, IsDueMonth, max(ExtraDays) ExtraDays from (
SELECT     CreditTermsCode AS PaymentTermsID, 
--ISNULL(DETAILS, 'ëììé') AS PaymentTerms,
DETAILS AS PaymentTerms,
--case when currenf + isnull([month],0)*30 + days = 0 then 'מזומן' else case when convert(varchar,CurrenF) = '1' then 'שוטף' else '' end + ' ' +convert(varchar,isnull([month],0)*30 + days) end AS PaymentTerms,
CurrenF as IsDueMonth,
isnull([month],0)*30 + days as ExtraDays
FROM         LNKHHH.HHHDemo.dbo.CREDITTERMS CREDITTERMS_1)a
group by PaymentTermsID, PaymentTerms, IsDueMonth





GO
