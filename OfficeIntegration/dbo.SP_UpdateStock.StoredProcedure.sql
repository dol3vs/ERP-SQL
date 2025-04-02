USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateStock]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   proc [dbo].[SP_UpdateStock]
as


truncate table t_DocInBo
insert into t_DocInBo
(amodatdoctypeid,docnum)
select  documentsoutmain.amodatdoctypeid,documentsoutmain.docnum
--update documentsoutmain set istransferedtobo = 1 
from AmodatHASH.dbo.documentsoutmain documentsoutmain
inner join DocsInBO

on documentsoutmain.docnum = DocsInBO.docnum
and documentsoutmain.amodatdoctypeid = DocsInBO.amodatdoctypeid
where documentsoutmain.istransferedtobo = 0

update documentsoutmain set istransferedtobo = 1 
from AmodatHASH.dbo.documentsoutmain documentsoutmain
inner join T_DocInBO

on documentsoutmain.docnum collate database_default = T_DocInBO.docnum
and documentsoutmain.amodatdoctypeid = T_DocInBO.amodatdoctypeid





GO
