USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[DocumentsInSUB_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  view [dbo].[DocumentsInSUB_Batch]

as
--- UNDELIVERD - LINES
select distinct

'16' as AmodatDocTypeID, 
Convert(nvarchar,Stock.docnumber) + '-' + Convert(nvarchar,Stock.DocumentID) as DocumentID, 
orders.ItemKey ProductID, 
LineNum, 
orders.ItemName ProductName,
PackS as PackQuantity, 
Orders.Quantity, 
Orders.Quantity - Orders.BaseQuantity as QuantityBad, 
Orders.Quantity - Orders.BaseQuantity as QtySupplied
 from 
(select StockID,ItemKey,ItemName,ID,Quantity,linenum,PackS,BaseQuantity,documentid from LNKHHH.HHHDemo.dbo.stockMoves where documentid in (6,11) and Duedate > getdate() - 7 and BaseQuantity > 0) as orders
inner join LNKHHH.HHHDemo.dbo.stock stock on Orders.StockID = stock.id
where stock.status =1 and LineNum is not null






GO
