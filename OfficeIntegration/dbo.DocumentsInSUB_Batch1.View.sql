USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[DocumentsInSUB_Batch1]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  view [dbo].[DocumentsInSUB_Batch1]

as
select distinct
AmodatDocTypeID, 
Convert(nvarchar,Stock.docnumber) + '-' + Convert(nvarchar,Stock.DocumentID) as DocumentID, 
stockMoves.ItemKey ProductID, 
ROW_NUMBER() OVER(PARTITION BY Stock.docnumber ORDER BY stockMoves.ID ASC) AS  LineNum, 
stockMoves.ItemName ProductName,PackS as PackQuantity, stockMoves.Quantity, Price,stockMoves.DiscountPRC as  Discount
 from 

LNKHHH.HHHDemo.dbo.stockMoves stockMoves
inner join LNKHHH.HHHDemo.dbo.stock stock 
on stockMoves.StockID = stock.id
inner join DocTypeConvert on stock.documentid = DocTypeConvert.DocumentID
where stock.documentid in (1,3) and stock.Duedate > getdate() - 90
and stock.status =1







GO
