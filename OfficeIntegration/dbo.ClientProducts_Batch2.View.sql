USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProducts_Batch2]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE       VIEW [dbo].[ClientProducts_Batch2]
AS

-- Last Products accourding to the Days define in V_PreLAST
SELECT L.[Params] + 
Case when Isnull(Discount,0) > 0 then 1048576 else 0 end as Params 
--+ 1048576 as Params
      ,L.[ProductID]
      ,[LastQuantity]
      ,[ClientProductID] +'L' as [ClientProductID]
	  ,PPL.price
      ,[LAstPrice]
      ,[LastDate]
      ,[ClientProductID] as Extra5
      ,Discount as Discount2
      ,[TextColor]
  FROM [ClientProductsLAST] L
  inner join Products_Batch P on L.ProductID collate database_default = P.ProductID
  left outer join CLIENTSDISCOUNTS_batch D on P.DiscountGroupID = D.DiscountGroupID
  and L.ClientProductID collate database_default = d.ClientID
  left outer join ( select ClientID,ProductID,Price from 
  Amodat712.dbo.Clients C inner join Amodat712.dbo.ProductsPriceLists PPL on C.PricelistID = PPL.PricelistID) PPL
  on L.ClientProductID collate database_default = ppl.clientID
  and L.[ProductID] collate database_default = ppl.productID











GO
