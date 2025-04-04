

create FUNCTION [dbo].[GetSalesOrderDetails](@Docnum Nvarchar(40), @DoctypeID nvarchar(40))  
 RETURNS NVARCHAR(MAX)  
AS  
BEGIN  
   RETURN (SELECT 
  
Replace(Replace(rows.DoctypeID ,'13','11'),'2','7') DocumentID,
rows.AgentID Agent,
rows.Docnum DocNumber,
CreateDate ValueDate, 
ClientID AccountKey,
--case when rows.Discount1 = 0 then Convert(numeric,rows.Discount1) else CONVERT(VARCHAR(25), CONVERT(FLOAT, rows.Discount1), 128) end [PERCENT],
rows.Discount1 as DiscountPrc,
rows.Remark Remarks, 
rows.WarehouseID WareHouse,
--,ORDERSTEXT_SUBFORM.LineNum TEXTLINE,ORDERSTEXT_SUBFORM.Remark [TEXT]
--,moves.SupplyDate DUEDATE,
ProductID ItemKey,
ProductName ItemName,
CurrencyCode,
--case when Price = 0 then Convert(numeric,Price) else  CONVERT(VARCHAR(25), CONVERT(FLOAT, Price), 128) end PRICE, 
Price as Price,
--case when moves.Discount1 = 0 then Convert(numeric,moves.Discount1)  else CONVERT(VARCHAR(25), CONVERT(FLOAT, moves.Discount1), 128) end   [PERCENT] ,
moves.DiscountPrc ,
moves.Details,
--case when Quantity = 0 then Convert(numeric,Quantity)  else CONVERT(VARCHAR(25), CONVERT(FLOAT, Quantity), 128) end TQUANT,
Convert(int,Quantity) Quantity

FROM (select 
D.DoctypeID, D.AgentID ,D.Docnum , /*Replace(Convert(nvarchar,Convert(DATETIMEOFFSET(0),CreateDate),126),'+00:00','+02:00')*/Convert(Date,CreateDate) CreateDate , ClientID ,D.Discount1 ,D.Remark , A.MainWarehouseID WarehouseID 
from Office.dbo.DocumentsoutMain D Inner join Office.dbo.Agents A 
	on D.AgentID = A.AgentID) rows 
	Inner join (select DoctypeID,DocNum,'1' LineNum,Remark  from Office.dbo.DocumentsOutMain ) ORDERSTEXT_SUBFORM
	on rows.Docnum = ORDERSTEXT_SUBFORM.Docnum 
	and rows.DoctypeID = ORDERSTEXT_SUBFORM.DoctypeID 
	inner join (select DoctypeID,Docnum,SupplyDate,ProductID,ProductName,Price,DiscountPrc,Quantity,ROW_NUMBER() OVER(PARTITION BY Docnum  ORDER BY LineNum ASC) LineNum ,CurrencyCode,Details  from (
select D.DoctypeID,D.Docnum,
			Replace(Convert(nvarchar,Convert(DATETIMEOFFSET(0),D.SupplyDate),126),'+00:00','+02:00') SupplyDate ,
			ProductID,
			ProductName ,
			Price , 
			Case when S.Discount1 = 0 then S.Discount2 else S.Discount1 end DiscountPrc ,
			Quantity ,
			LineNum,
			S.Remark Details,
			'ש"ח' CurrencyCode
				from Office.dbo.DocumentsoutSub S inner join  Office.dbo.DocumentsoutMain D on S.Docnum = D.Docnum and S.DoctypeID = D.DoctypeID
union
select D.DoctypeID,D.Docnum,
			Replace(Convert(nvarchar,Convert(DATETIMEOFFSET(0),D.SupplyDate),126),'+00:00','+02:00') SupplyDate ,
			ProductID,
			ProductName ,
			0.01 as Price , 
			0 DiscountPrc ,
			S.Bonus Quantity ,
			LineNum,
			S.Remark Details,
			'ש"ח' CurrencyCode
				from Office.dbo.DocumentsoutSub S inner join  Office.dbo.DocumentsoutMain D on S.Docnum = D.Docnum and S.DoctypeID = D.DoctypeID where S.Bonus <> 0
				) a  ) moves 
	on rows.Docnum = moves.Docnum 
	and rows.DoctypeID = moves.DoctypeID 
	left outer join ( select DoctypeID,Docnum,LineNum,Remark from Office.dbo.DocumentsoutSub ) ORDERITEMSTEXT_SUBFORM
	on moves.Docnum = ORDERITEMSTEXT_SUBFORM.Docnum
	and  moves.DoctypeID = ORDERITEMSTEXT_SUBFORM.DoctypeID
	and  moves.LineNum = ORDERITEMSTEXT_SUBFORM.LineNum
	
	where rows.Docnum = @Docnum and rows.DoctypeID = @DoctypeID
	order by moves.LineNum
FOR JSON AUTO   ,ROOT('rows')
          )  
END


