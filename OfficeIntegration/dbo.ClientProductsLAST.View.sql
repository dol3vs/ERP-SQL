USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProductsLAST]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [dbo].[ClientProductsLAST]
AS

SELECT  
		8 AS Params, 
		dbo.V_LAST.ItemkEY AS ProductID, 
		CONVERT(decimal(9, 2), max(dbo.V_LAST.Quantity)) AS LastQuantity, 
		dbo.V_LAST.ACCOUNTKEY AS ClientProductID, 
        CONVERT(Decimal(9, 2), Max(dbo.V_LAST.LAstPrice)) AS LAstPrice, 
		max(dbo.V_LAST.VALUEDATE) AS LastDate,
		'Blue' as TextColor
FROM         dbo.V_LAST 
--WHERE     V_LAST.ACCOUNTKEY = '95063' and V_LAST.ItemkEY = '111100'
group by dbo.V_LAST.ItemKey,dbo.V_LAST.ACCOUNTKEY







GO
