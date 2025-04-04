USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ProductUnits_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE            VIEW [dbo].[ProductUnits_Batch]
AS


select distinct ProductID, isnull(Unit,'') as Unit, isnull(UnitPerPack,1) as UnitPerPack, PriceChangePercent,isnull(UnitBarcode,'') as UnitBarcode,0  as RestrictToUnitMode  from (
SELECT  ItemKey ProductID,
-- EXTRASUMS.Unit,EXTRASUMS.UnitPerPack,EXTRASUMS.UnitBarcode if exists in EXTRASUMS 
--else get from ITEMS ITEMS.SalesUnit as Unit,ITEMS.UnitPerPack,ITEMS.BarCode as UnitBarcode 
--for allow identify product by barcode and  scanning with increase 1 quantity default
case when ExtraSums.KeF is not null then  SufName else isNull(ITEMS.SalesUnit,N'בודד') End as Unit,
case when ExtraSums.KeF is not null then  Suf else convert(decimal,1) End as UnitPerPack,
ProdBarcodes.Barcode as UnitBarcode,
0 PriceChangePercent
from LNKHHH.HHHDemo.dbo.ITEMS 
left outer join 
(
--Select ItemKey as ProductID,BarCode as Barcode From LNKHHH.HHHDemo.dbo.ITEMS 
--Union
--change the "NoteID" by indevidual 
select Kef as ProductID,Note as Barcode From LNKHHH.HHHDemo.dbo.ExtraNotes Where itemflag = 1 and NoteID = 27
)ProdBarcodes
On ITEMS.ItemKey = ProdBarcodes.ProductID
left outer join LNKHHH.HHHDemo.dbo.ExtraSums ON ITEMS.ItemKey = ExtraSums.KeF and itemflag = 1 and SuFID in (5,6,12)
left outer join LNKHHH.HHHDemo.dbo.ExtraSumNames ON ExtraSums.SuFID = ExtraSumNames.SuFID and ExtraSumNames.itemflag = 1 
where ITEMNAME IS NOT NULL and ITEMS.Dumi <> 3 
and ITEMS.SORTGROUP in (select departmentid from departments_batch) ) a




GO
