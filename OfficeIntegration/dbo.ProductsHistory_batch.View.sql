USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ProductsHistory_batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  view [dbo].[ProductsHistory_batch]
AS
SELECT    
 
 
STOCKMOVES_1.ItemKey ProductID, 
AVG(STOCKMOVES_1.Price) Price, 
Sum(STOCKMOVES_1.Quantity) Quantity, 
AVG(STOCKMOVES_1.DiscountPrc) Discount, 
--STOCKMOVES_1.ID, 
STOCK_1.DocNumber AS Reference, 
STOCK_1.AccountKey ClientID , 
STOCK_1.ValueDate ReferenceDate--, 
--STOCKMOVES_1.DocumentID
FROM         LNKHHH.HHHDemo.dbo.StockMoves STOCKMOVES_1 INNER JOIN
                      LNKHHH.HHHDemo.dbo.Stock STOCK_1 ON STOCKMOVES_1.StockID = STOCK_1.ID

where STOCKMOVES_1.DocumentID in (1,9) and STOCK_1.ValueDate > getdate()-180


group by STOCKMOVES_1.ItemKey , 
STOCK_1.DocNumber  , 
STOCK_1.AccountKey  , 
STOCK_1.ValueDate 






GO
