USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProductsSPEC]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE            View [dbo].[ClientProductsSPEC]
as
SELECT     TOP 100 percent  dbo.V_PerSPEC.DETAILES AS Remark, dbo.V_PerSPEC.ITEMKEY AS ProductID, dbo.V_PerSPEC.ACCOUNTKEY AS ClientProductID, 
                      dbo.V_PerSPEC.[Date] AS LastDate, CONVERT(decimal(9, 2), SPECIALPRICESMOVES_1.PRICE) AS PRICE, 48 AS Params, CONVERT(decimal(9, 2), SPECIALPRICESMOVES_1.DISCOUNTPRC) 
                      AS Discount, CONVERT(decimal(9, 2), 0) AS LastQuantity, GETDATE() AS Updated, ACCOUNTS_1.VARIETYID
FROM         LNKHHH.HHHDemo.dbo.SPECIALPRICESMOVES SPECIALPRICESMOVES_1 INNER JOIN
                      dbo.V_PerSPEC ON SPECIALPRICESMOVES_1.SPID = dbo.V_PerSPEC.Num INNER JOIN
                      LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS_1 ON dbo.V_PerSPEC.ACCOUNTKEY = ACCOUNTS_1.ACCOUNTKEY COLLATE Hebrew_CI_AS
WHERE     SPECIALPRICESMOVES_1.ACTIVE = '0' and SPECIALPRICESMOVES_1.MINQUANTITY = 0
--and dbo.V_PerSPEC.ACCOUNTKEY = '62005166'




GO
