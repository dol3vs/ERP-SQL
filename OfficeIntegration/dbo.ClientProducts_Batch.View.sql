USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProducts_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE        VIEW [dbo].[ClientProducts_Batch]
AS

--   Varietis

SELECT    distinct ProductID, ClientProductID, ISNULL(PRICE, price_1) AS PRICE, params,Discount2,'Green' as TextColor
FROM         dbo.V_CustItemMigvan
WHERE     (ProductID IS NOT NULL) AND (ClientProductID IS NOT NULL)

GO
