USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[Collection_Batch]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   View [dbo].[Collection_Batch]
as

select clientID, C.Reference, Reference2, PurchaseDate, ToPayDate, Remark,
--Isnull(Convert(nvarchar,S.ID),CollectionID) as CollectionID,
CollectionID,
Sum(InvoiceTotal) InvoiceTotal, SUM(ToPay) ToPay
from (
SELECT 
JURNALTRANSMOVES.ACCOUNTKEY as clientID, 
JURNALTRANS.REFERANCE as Reference, 
JURNALTRANS.REF2 as Reference2, 
JURNALTRANS.VALUEDATE as PurchaseDate, 
JURNALTRANS.DUEDATE as ToPayDate,
convert(nvarchar(20),JURNALTRANS.DESCRIPTION) AS Remark,
Case when JURNALTRANS.transdebID in(
select ACCOUNTKEY from  LNKHHH.HHHDemo.dbo.ACCOUNTS where SortGroup in ('100','110','400','413','1')
union
select cheqAcc from LNKHHH.HHHDemo.dbo.CompanyDefenitions) or JURNALTRANS.transCredID = CompanyDefenitions.cheqAcc or JURNALTRANS.STOCKID = 0 
then Convert(nvarchar,JURNALTRANSMOVES.ID)+'Z' else Convert(nvarchar,JURNALTRANS.STOCKID) end  as CollectionID,
--Case when JURNALTRANSMOVES.DEBITCREDIT = 0 then JURNALTRANSMOVES.SUF *-1 else JURNALTRANSMOVES.SUF end, 
(convert(decimal(18,2),Case when JURNALTRANSMOVES.DEBITCREDIT = 0 then JURNALTRANSMOVES.SUF *-1 else JURNALTRANSMOVES.SUF end)) as InvoiceTotal, 
(convert(decimal(18,2),Case when JURNALTRANSMOVES.DEBITCREDIT = 0 then JURNALTRANSMOVES.SUF *-1 else JURNALTRANSMOVES.SUF end)+ isnull(QUERYFORMATCH.SUF,0)) as ToPay ,JURNALTRANS.TransType

FROM ((LNKHHH.HHHDemo.dbo.JURNALTRANS JURNALTRANS INNER JOIN LNKHHH.HHHDemo.dbo.JURNALTRANSMOVES JURNALTRANSMOVES ON JURNALTRANS.TRANSID = JURNALTRANSMOVES.TRANSID) 
INNER JOIN LNKHHH.HHHDemo.dbo.ACCOUNTS ACCOUNTS ON JURNALTRANSMOVES.ACCOUNTKEY = ACCOUNTS.ACCOUNTKEY) 
LEFT JOIN LNKHHH.HHHDemo.dbo.QUERYFORMATCH QUERYFORMATCH ON JURNALTRANSMOVES.ID = QUERYFORMATCH.JURNALTRANSID 
cross join LNKHHH.HHHDemo.dbo.CompanyDefenitions CompanyDefenitions
WHERE ((((JURNALTRANS.STATUS) = 1) AND ((JURNALTRANS.TYPE) = 0) 
aND ((JURNALTRANS.SUF) <> 0) AND ((ACCOUNTS.MATCHCURRFLAG) = 1) 
AND (((JURNALTRANSMOVES.SUF*(2*JURNALTRANSMOVES.DEBITCREDIT-1) + QUERYFORMATCH.SUF) <= -0.01) 
OR ((JURNALTRANSMOVES.SUF*(2*JURNALTRANSMOVES.DEBITCREDIT-1) + QUERYFORMATCH.SUF) >= 0.01) 
OR ((JURNALTRANSMOVES.SUF*(2*JURNALTRANSMOVES.DEBITCREDIT-1) + QUERYFORMATCH.SUF) IS NULL ))))
and JURNALTRANSMOVES.ACCOUNTKEY in (select clientID from clients_Batch) ) C
--left outer join LNKHHH.HHHDemo.dbo.Stock S
--on C.Reference = S.DocNumber and C.transType = S.transType
--and S.Status <> 0

group by clientID, C.Reference, Reference2, PurchaseDate, ToPayDate, Remark,CollectionID



GO
