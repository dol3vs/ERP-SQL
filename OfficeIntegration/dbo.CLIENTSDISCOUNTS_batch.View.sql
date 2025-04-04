USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[CLIENTSDISCOUNTS_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE          VIEW [dbo].[CLIENTSDISCOUNTS_batch]
AS
SELECT     	DISCOUNTS_1.ACCOUNTKEY AS ClientID, 
		MAX(DISCOUNTPRC) AS Discount, 
		lower(ITEMDISCOUNTCODE) AS DiscountGroupID,
		PriceListNumber as PriceListID,'Silver' as BackColor
FROM         LNKHHH.HHHDemo.dbo.DISCOUNTS DISCOUNTS_1
			inner join LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS  on DISCOUNTS_1.ACCOUNTKEY collate database_default = ACCOUNTS.ACCOUNTKEY
--where DISCOUNTPRC <> 0
GROUP BY DISCOUNTS_1.ACCOUNTKEY, ITEMDISCOUNTCODE,PriceListNumber,ACCOUNTS.Varietyid
--HAVING      (MAX(DISCOUNTPRC) <> 0)
--HAVING DISCOUNTS_1.ACCOUNTKEY = 2001






GO
