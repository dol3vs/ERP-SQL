USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[Products_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE            VIEW [dbo].[Products_Batch]
AS


SELECT     TOP 100 PERCENT
					ITEMS_1.ITEMKEY AS ProductID, 
					ITEMS_1.ITEMNAME AS ProductName, 
					ITEMS_1.SORTGROUP AS DepartmentID, 
					ITEMS_1.BARCODE AS Barcode,
					lower(ISNULL(ITEMS_1.DISCOUNTCODE, '')) AS DiscountGroupID, 
					ITEMS_1.SALESUNIT AS Unit, 
                    --isnull(dbo.UnitPerPacks.UnitPerPack,1) as UnitPerPack, 
					case when isnull(ITEMS_1.Suf4,1) = 0 then 1 else isnull(ITEMS_1.Suf4,1) end as UnitPerPack,
					ITEMS_1.WEIGHT AS UnitWeight,
					ITEMS_1.VOLUME AS UnitVolume, 
					--isnull(dbo.MainProductsParent.IsParent,'0') as IsParent, 
					--ISNULL(dbo.MainProducts.MainProductID, '') AS MainProductID,
					ITEMS_1.ITEMNAME as SortField,
                    ITEMS_1.ITEMKEY+'.jpg' as ImageName,
					Extra1.Note as Extra1,
					ITEMS_1.Localization as Extra2,
                    0   as params
FROM         LNKHHH.HHHDemo.dbo.ITEMS ITEMS_1 LEFT OUTER JOIN
                      --dbo.MainProductsParent ON ITEMS_1.ITEMKEY = dbo.MainProductsParent.MainProductID LEFT OUTER JOIN
                      --dbo.MainProducts ON ITEMS_1.ITEMKEY = dbo.MainProducts.ProductID LEFT OUTER JOIN
                      dbo.UnitPerPacks ON ITEMS_1.ITEMKEY = dbo.UnitPerPacks.ProductID
					  left outer join (select Kef,Note from LNKHHH.HHHDemo.dbo.ExtraNotes where NoteID = 2 and ItemFlag = 1) Extra1
					  on ITEMS_1.ITEMKEY = Extra1.kef
					  left outer join imageFiles on ITEMS_1.ITEMKEY COLLATE database_default = imageFiles.productid
WHERE     (ITEMS_1.ITEMNAME IS NOT NULL) and ITEMS_1.ITEMKEY is not null and Dumi <> 3 
and ITEMS_1.SORTGROUP in (select departmentid from departments_batch) 






GO
