USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ProductsPriceLists_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE          View [dbo].[ProductsPriceLists_Batch]
as
SELECT  distinct   PRICELISTS_1.ITEMKEY AS ProductID, 
	CONVERT(decimal(18, 4), PRICELISTS_1.PRICE) AS PRICE, 
                      PRICELISTS_1.PRICELISTNUMBER AS PriceListID,CONVERT(decimal(18, 4), V_MinPrice.PRICE) AS MinPRICE
FROM         LNKHHH.HHHDemo.dbo.PRICELISTS PRICELISTS_1 INNER JOIN
                      dbo.V_releventPRICE ON PRICELISTS_1.DATF = dbo.V_releventPRICE.Expr1 AND 
                      PRICELISTS_1.PRICELISTNUMBER = dbo.V_releventPRICE.PRICELISTNUMBER 
				AND PRICELISTS_1.ITEMKEY = dbo.V_releventPRICE.ITEMKEY
					AND PRICELISTS_1.ID = dbo.V_releventPRICE.ID
left outer join  v_Minprice on PRICELISTS_1.ITEMKEY = v_Minprice.ProductID
where PRICELISTS_1.ITEMKEY is not null
And PRICELISTS_1.ITEMKEY in (Select ProductID from Products_Batch)
--and PRICELISTS_1.PRICELISTNUMBER <>1
-- Default Price From Product Card
union

SELECT  distinct  
ITEMS.ITEMKEY AS ProductID, 
CONVERT(decimal(18, 4), ITEMS.PRICE) AS PRICE, 
'999' AS PriceListID,
CONVERT(decimal(18, 4), V_MinPrice.PRICE) AS MinPRICE
FROM         LNKHHH.HHHDemo.dbo.ITEMS ITEMS 
left outer join  v_Minprice on ITEMS.ITEMKEY = v_Minprice.ProductID
where ITEMS.ITEMKEY is not null and ITEMS.PRICE <> 0 

--union

--SELECT  distinct  
--ITEMS.ITEMKEY AS ProductID, 
--CONVERT(decimal(18, 4), ITEMS.PRICE) AS PRICE, 
--'1' AS PriceListID,
--CONVERT(decimal(18, 4), V_MinPrice.PRICE) AS MinPRICE
--FROM         LNKHHH.HHHDemo.dbo.ITEMS ITEMS 
--left outer join  v_Minprice on ITEMS.ITEMKEY = v_Minprice.ProductID
--where ITEMS.ITEMKEY is not null and ITEMS.PRICE <> 0 



GO
