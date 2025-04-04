USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_Export]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE          proc [dbo].[SP_Export]
as

--empty tables
truncate table IMPORTKUPA_HHH
truncate table IMPORTJOURNAL_HHH
truncate table IMPORTSTOCK_HHH

if(dbo.fn_GetIsLogisticsActive() = 1)
Begin
	-- exec sp_L_UpdateDocStatus before hhh masofon2 run for update amodat db
	--exec sp_L_UpdateDocStatus (run after HHH finished by bat file)

	--Update Docs already transfered
	--exec SP_L_UpdateStock (run after HHH finished by bat file)

	
	--/////////////////////////insert into IMPORTSTOCK_HHH from L_V_IMPORTSTOCK'///////////////////////////////////////
	insert into IMPORTSTOCK_HHH
	([ACCOUNTKEY], [DOCNUMBER], [DOCUMENTID], [DETAILS], [VALUEDATE], [DUEDATE], [WAREHOUSE], [AGENT], [GENERALDISCOUNTPRC], [ITEMKEY], [PRICE], [QUANTITY], [DISCOUNTPRC], [ITEMNAME],  
	[ACCOUNTNAME],  [PACKS], [Remarks] ,[AmodatDocTypeID],TOWAREHOUSE,BaseMoveID,BaseStockID,ExtraSum1)
	SELECT SI.[ACCOUNTKEY] ,SI.[DOCNUMBER], SI.[DOCUMENTID], SI.[DETAILS], SI.[VALUEDATE], SI.[DUEDATE], SI.[WAREHOUSE] ,SI.[AGENT], SI.[GENERALDISCOUNTPRC], SI.[ITEMKEY],
	SI.[PRICE], SI.[QUANTITY],[DISCOUNTPRC] , SI.[ITEMNAME], SI.[ACCOUNTNAME], SI.[PACKS], SI.[REMARK],[AmodatDocTypeID],SI.TOWAREHOUSE,BaseMoveID,BaseStockID,ExtraSum1
	FROM [L_V_IMPORTSTOCK] SI
	left outer join (
	select [ACCOUNTKEY],[DOCNUMBER], D6.DOCUMENTID from 
	V_Export_STOCK s inner join V_Export_DocumentsDef D6
	on  S.[DOCUMENTID] = D6.DOCUMENTID) S on  S.[ACCOUNTKEY]  collate database_default= SI.[ACCOUNTKEY] And  S.[DOCNUMBER] = SI.[DOCNUMBER] and S.[DOCUMENTID] = SI.[DOCUMENTID]
	WHERE SI.QUANTITY<>0 and S.[ACCOUNTKEY] is null
	order by  SI.[DOCNUMBER],SI.LineNum


	--LOG
	insert into LogExportBO (DocNum,AmodatDoctypeID,[Type],ServerDate)
	select [DOCNUMBER],[AmodatDocTypeID],'L_V_IMPORTSTOCK' [Type],Getdate() FROM [L_V_IMPORTSTOCK]
	--/////////////////////////insert into IMPORTSTOCK_HHH from L_V_IMPORTSTOCK'///////////////////////////////////////
End


--Update Docs already transfered
--exec dbo.SP_UpdateStock (run after HHH finished by bat file)

-- Kupain
--truncate table  IMPORTKUPA_HHH
insert into IMPORTKUPA_HHH
([ACCOUNTKEY], [DOCNUMBER], [TRANSTYPE], [PAYDATE], [DUEDATE], [DETAILS], [CHEQNUMBER], [BANKNUMBER], [BRANCH], [BANKACCNUM], [SUF], [SUFDLR], [CURRENCY], [CURRENCYDLR] ,[AmodatDocTypeID])
SELECT IK.[ACCOUNTKEY], IK.[DOCNUMBER], IK.[TRANSTYPE], IK.[PAYDATE], IK.[DUEDATE], IK.[DETAILS],IK.[CHEQNUMBER],  IK.[BANKNUMBER], IK.[BRANCH], IK.[BANKACCNUM], IK.[SUF], IK.[SUFDLR], IK.[CURRENCY], IK.[CURRENCYDLR] ,[AmodatDocTypeID] 
FROM [v_IMPORTKUPA] IK
left outer join
IMPORTKUPA_BO I on IK.[ACCOUNTKEY] = I.[ACCOUNTKEY] and IK.[DOCNUMBER] = I.[DOCNUMBER]
where I.[ACCOUNTKEY] is null

-- LOG
insert into LogExportBO
(DocNum,AmodatDoctypeID,[Type])
select 
[DOCNUMBER],[AmodatDocTypeID],'V_IMPORTKUPA'  FROM [v_IMPORTKUPA]

----jOURNAL
--insert into IMPORTJOURNAL_HHH
--([TRANSTYPE], [REFERENCE], [REFERENCE2], [VALUEDATE], [DUEDATE], [CURRENCYCODE], [DESCRIPTION], [DEBID1], [CREDID1], [DEBSUF1], [CREDSUF1] ,[AmodatDocTypeID])
--SELECT IJ.[TRANSTYPE], IJ.[REFERENCE], IJ.[REFERENCE2], IJ.[VALUEDATE], IJ.[DUEDATE], IJ.[CURRENCYCODE], IJ.[DESCRIPTION], IJ.[DEBID1], IJ.[CREDID1], IJ.[DEBSUF1], IJ.[CREDSUF1] ,[AmodatDocTypeID]
--FROM [V_IMPORTJOURNAL] IJ
--left outer join V_Export_JURNALTRANS J on IJ.[REFERENCE]  = J.[REFERANCE] and IJ.[DEBID1]  collate database_default  = J.TransDebid and IJ.[TRANSTYPE] collate database_default  = J.[TRANSTYPE]
--where J.[REFERANCE] is null

----LOG
--insert into LogExportBO
--(DocNum,AmodatDoctypeID,[Type])
--select 
--[REFERENCE],[AmodatDocTypeID],'V_IMPORTJOURNAL'  FROM [V_IMPORTJOURNAL]

---- invoice
--insert into IMPORTJOURNAL_HHH
--([TRANSTYPE], [REFERENCE], [REFERENCE2], [VALUEDATE], [DUEDATE], [CURRENCYCODE], [DESCRIPTION], [DEBID1],[DEBID2], [CREDID1], [CREDID2],[DEBSUF1], [DEBSUF2],[CREDSUF1],[CREDSUF2] ,[AmodatDocTypeID])
--SELECT IJ.[TRANSTYPE], IJ.[REFERENCE], IJ.[REFERENCE2], IJ.[VALUEDATE], IJ.[DUEDATE], IJ.[CURRENCYCODE], IJ.[DESCRIPTION], IJ.[DEBID1],IJ.[DEBID2], IJ.[CREDID1],IJ.[CREDID2], IJ.[DEBSUF1], IJ.[DEBSUF2],IJ.[CREDSUF1] ,IJ.[CREDSUF2] ,[AmodatDocTypeID] 
--FROM [V_IMPORTJOURNAL_INV] IJ
--left outer join V_Export_JURNALTRANS J on IJ.[REFERENCE]= J.[REFERANCE] and IJ.[DEBID1] collate database_default = J.TranscredID and IJ.[TRANSTYPE] collate database_default = J.[TRANSTYPE]
--where J.[REFERANCE] is null

---- LOG
--insert into LogExportBO
--(DocNum,AmodatDoctypeID,[Type])
--select 
--[REFERENCE],[AmodatDocTypeID],'V_IMPORTJOURNAL_INV'  FROM [V_IMPORTJOURNAL_INV]


--Imovein
--Documents (orders, etc..)
insert into IMPORTSTOCK_HHH
([ACCOUNTKEY], [DOCNUMBER], [DOCUMENTID], [DETAILS], [VALUEDATE], [DUEDATE], [WAREHOUSE], [AGENT], [GENERALDISCOUNTPRC], [ITEMKEY], [PRICE], [QUANTITY], [DISCOUNTPRC], [ITEMNAME],  
[ACCOUNTNAME],  [PACKS], [Remarks],[ALTERNUM] ,[AmodatDocTypeID])
SELECT SI.[ACCOUNTKEY] ,SI.[DOCNUMBER], SI.[DOCUMENTID], SI.[DETAILS], SI.[VALUEDATE], SI.[DUEDATE], SI.[WAREHOUSE] ,SI.[AGENT], SI.[GENERALDISCOUNTPRC], SI.[ITEMKEY],
SI.[PRICE], SI.[QUANTITY],[DISCOUNTPRC] , SI.[ITEMNAME], SI.[ACCOUNTNAME], SI.[PACKS], SI.[REMARK],SI.[ALTERNUM],[AmodatDocTypeID]
FROM [V_IMPORTSTOCK] SI
left outer join (
select [ACCOUNTKEY],[DOCNUMBER], D6.DOCUMENTID from 
V_Export_STOCK s inner join V_Export_DocumentsDef D6
on  S.[DOCUMENTID] = D6.DOCUMENTID) S on  S.[ACCOUNTKEY] = SI.[ACCOUNTKEY] And  S.[DOCNUMBER] = SI.[DOCNUMBER] 
and S.[DOCUMENTID] = SI.[DOCUMENTID]
WHERE SI.QUANTITY<>0 and S.[ACCOUNTKEY] is null
order by  SI.[DOCNUMBER],SI.LineNum   --SI.[DOCUMENTID],SI.[ACCOUNTKEY], SI.[ITEMKEY], SI.[PRICE]


--LOG
insert into LogExportBO
(DocNum,AmodatDoctypeID,[Type])
select 
[DOCNUMBER],[AmodatDocTypeID],'V_IMPORTSTOCK'  FROM [V_IMPORTSTOCK]

GO
