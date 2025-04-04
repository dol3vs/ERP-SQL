USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[CollectionSub_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  View [dbo].[CollectionSub_Batch]
as

SELECT     
CONVERT(decimal(18, 2), dbo.V_DETAILS.DiscountPrc) AS DISCOUNT, 
dbo.V_DETAILS.Quantity, 
dbo.V_DETAILS.Price, 
dbo.V_DETAILS.ItemKey as ProductID, 
LEFT(dbo.V_DETAILS.ItemName, 28) AS ProductName, 
dbo.V_DETAILS.StockID AS CollectionID, 
dbo.V_DETAILS.ID AS LineNum 
FROM     dbo.V_DETAILS






GO
