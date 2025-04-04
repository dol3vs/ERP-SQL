USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[DocumentsInMain_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  view [dbo].[DocumentsInMain_Batch]

as
-- unDeliverd - (open orders)
select distinct
'16' as AmodatDocTypeID, 
Convert(nvarchar,Stock.docnumber) + '-' + Convert(nvarchar,Stock.DocumentID) as DocumentID,-- Stock.DocumentID,Stock.docnumber,
AccountKey as  ClientID, 
Convert(nvarchar(100),Remarks) as Remark, 
ValueDate CreateDate, 
DueDate SupplyDate, tftal TotalSum
from 
LNKHHH.HHHDemo.dbo.stock 
where id in 
(select StockID from LNKHHH.HHHDemo.dbo.stockMoves where BaseQuantity > 0)
and stock.ValueDate > getdate()-7
and Stock.status = 1
and DocumentID in (11,6)







GO
