USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_AutoImport]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE        PROCEDURE [dbo].[SP_AutoImport] (@IsAuto int) AS

--if the last AutoImport failed then DEALLOCATE CurView before create new
IF CURSOR_STATUS('global','CurView')>=-1
BEGIN
	DEALLOCATE CurView
END

--check if there is new agent so insert them and delete the olds
--exec InstDelAgents_ImportWizardAgentRelation

--strat  SP_AutoImport
DECLARE @TempString varchar(2000)
DECLARE @MYPROC varchar(500)
DECLARE @AMODAT_DB_NAME VARCHAR(50)
DECLARE @INTEGRATION_DB_NAME VARCHAR(50)
------------------------------------------------------------------------------------------------------------------
SET  @AMODAT_DB_NAME = Left(db_name() , Len(db_name()) - 11)
SET  @INTEGRATION_DB_NAME = db_name()

-----------------------------------------------------------------------------------------------------------------

print 'SP_Targets_ImportLocalTabels'
exec SP_Targets_ImportLocalTabels

PRINT 'Del table LogExport'
EXEC('SP_DelLogExport')


--PRINT 'SP_Last'
--exec SP_Last

--PRINT 'sp_V_Details'
--exec sp_V_Details


EXEC( 'DECLARE CurView CURSOR FOR 
	SELECT NAME FROM '+@INTEGRATION_DB_NAME +'.dbo.sysobjects where (RIGHT(name,6)=''_Batch'' or SUBSTRING (name,len(name)-6,6)=''_Batch'') AND (type=''V'' or type=''U'')  ORDER BY  NAME   FOR READ ONLY')

OPEN CurView
FETCH NEXT FROM CurView INTO @TempString	

WHILE @@Fetch_Status = 0
BEGIN	
	Print GetDate()
	PRINT  @TempString
	SET  @MYPROC='SP_InsertData  '''+@TempString+''','''+@INTEGRATION_DB_NAME+''','''+@AMODAT_DB_NAME+''''
	EXEC (@MYPROC)

FETCH NEXT FROM CurView INTO @TempString  
END
CLOSE CurView
DEALLOCATE CurView



IF  @IsAuto=1
BEGIN
	SET  @MYPROC=@AMODAT_DB_NAME+ '.dbo.sp_UpdateMobileTables'
EXEC (@MYPROC)
END

PRINT 'sp_ActiveNewAgents'
EXEC('sp_ActiveNewAgents')

PRINT 'RatingColor'
update AmodatHASH.dbo.Clients set Rating = 'D',RatingColor = '#fc0703' where Rating =''
GO
