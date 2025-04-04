USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProducts_Batch1]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[ClientProducts_Batch1]
AS

-- Spec with Last
SELECT     M.ProductID, M.ClientProductID, M.PRICE, 
case when LAstPrice is null then M.params else M.params + 8 end as Params,
M.Discount2,LastQuantity,LAstPrice,'Magenta' as TextColor
FROM         dbo.V_CustItemNoMigvan M
left outer join dbo.ClientProductsLAST L
on M.ClientProductID collate database_default = L.ClientProductID
and M.ProductID collate database_default = L.ProductID


GO
