USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[DocumentsInMain_Batch1]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  view [dbo].[DocumentsInMain_Batch1]

as
select
AmodatDocTypeID, DocumentID, ClientID, remark, CreateDate, Discount, SupplyDate, max(TotalSum) TotalSum
from (
--- Client documents 
select distinct
AmodatDocTypeID, 
Convert(nvarchar,Stock.docnumber) + '-' + Convert(nvarchar,Stock.DocumentID) as DocumentID, 
stock.AccountKey as  ClientID, 
--Convert(nvarchar(100),stock.Remarks) as Remark, 
'' as remark,
stock.ValueDate CreateDate,Convert(Int,stock.DiscountPRC) as Discount,
stock.DueDate SupplyDate, stock.tftal TotalSum
  
 from 

LNKHHH.HHHDemo.dbo.stock stock 
inner join LNKHHH.HHHDemo.dbo.stockMOVES stockMOVES 
	on stock.ID = stockMOVES.StockID
inner join DocTypeConvert on stock.documentid = DocTypeConvert.DocumentID
where stock.documentid in (1,3,9) 
and stock.status = 1 AND stock.AccountKey <> '2999' and stock.ValueDate > getdate()-90)a
group by AmodatDocTypeID, DocumentID, ClientID, remark, CreateDate, Discount, SupplyDate






GO
