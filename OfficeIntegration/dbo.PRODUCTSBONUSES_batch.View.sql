USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[PRODUCTSBONUSES_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE       View [dbo].[PRODUCTSBONUSES_batch]

AS
SELECT  distinct   SPECIALPRICES_1.ACCOUNTKEY AS BonusID, SPECIALPRICES_1.ITEMKEY AS ProductID, SPECIALPRICESMOVES_1.DISCOUNTPRC AS Discount, 
                      SPECIALPRICESMOVES_1.MINQUANTITY AS MinQuantity, 4 AS Params
FROM         LNKHHH.HHHDemo.dbo.SPECIALPRICES AS SPECIALPRICES_1 INNER JOIN
                      LNKHHH.HHHDemo.dbo.SPECIALPRICESMOVES AS SPECIALPRICESMOVES_1 ON SPECIALPRICES_1.ID = SPECIALPRICESMOVES_1.SPID
WHERE     (SPECIALPRICES_1.ACTIVE = 0) AND (SPECIALPRICESMOVES_1.MINQUANTITY <> 0) and SPECIALPRICESMOVES_1.ACTIVE = 0




GO
