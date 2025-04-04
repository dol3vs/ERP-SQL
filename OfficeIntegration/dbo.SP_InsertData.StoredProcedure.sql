USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertData]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[SP_InsertData] (@MYTable varchar(100),@SourceDB varchar (50),@DestinationDB varchar(50)) AS

DECLARE @ColNum  int
DECLARE @MyString  varchar(3500)
DECLARE @TempString varchar(2000)
DECLARE @ColStat int
DECLARE @HasIdentity int
DECLARE @WholeFields varchar(3500)
DECLARE @DESTINATION_TABLE varchar(100)
DECLARE @RightMYTable varchar(100)

set @RightMYTable = RIGHT(@MYTable,7)
IF @RightMYTable='_Direct' 
	SET @DESTINATION_TABLE = LEFT(@MYTable,LEN(@MYTable)-7) + '1'
ELSE
	SELECT @DESTINATION_TABLE = 
	CASE @RightMYTable
		WHEN '_Batch1' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch2' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch3' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch4' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch5' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch6' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch7' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch8' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch9' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		WHEN '_Batch10' THEN LEFT(@MYTable,LEN(@MYTable)-7) + '1'
		ELSE LEFT(@MYTable,LEN(@MYTable)-6) + '1'
	END


SET @ColNum=0
SET @HasIdentity = 0
SET @WholeFields=''
EXEC( 'DECLARE myCur CURSOR FOR 
	SELECT	syscolumns.name, syscolumns.colStat
	FROM	' + @SourceDB + '.dbo.syscolumns syscolumns, ' + @SourceDB + '.dbo.sysobjects sysobjects
	WHERE   	sysobjects.name = ''' + @MYTable + '''
	AND	syscolumns.id = sysobjects.id
	FOR READ ONLY')

OPEN myCur
FETCH NEXT FROM MyCur INTO @TempString	, @colStat
--SELECT @TempString=COL_NAME(OBJECT_ID(@MyTable), @ColNum) -- Fetch the field name
WHILE @@Fetch_Status = 0
BEGIN	
	SET @ColNum=@ColNum+1
	IF @TempString <>'RowGuid'    AND  @TempString <>'Added' AND @TempString <>'Updated'
	             IF @ColNum=1
		 Begin 
                          		SET @WholeFields=@WholeFields + @TempString 
		END --  First Field , No "  , "
                          ELSE
                          BEGIN
                          SET @WholeFields=@WholeFields + ',' + @TempString 
                          END
		IF @ColStat = 1 or @ColStat = 9  SET @HasIdentity = 1
              	--CONTINUE -- To The Next Field
	
FETCH NEXT FROM MyCur INTO @TempString  , @colStat
END
CLOSE MyCur
DEALLOCATE MyCur

	--strat Insert and truncate
	Set @MyString = 'INSERT INTO '+@DestinationDB+'.dbo.' +@DESTINATION_TABLE +'(' +@WholeFields+') SELECT ' +@WholeFields + ' FROM '+@SourceDB + '.dbo.' + @MyTable  --ALTER SQL Command

	IF right(@MYTable,6)='_Batch' or @MYTable='_Direct' 
	BEGIN
		declare @DelStr as varchar(500)
		set @DelStr = 'TRUNCATE TABLE  '+@DestinationDB+'.dbo.'+@DESTINATION_TABLE
		 EXEC (@DelStr)  --Delete The Destination Table
	END
	IF @HasIdentity = 0
	BEGIN
		PRINT @MySTring
		EXEC ( @MySTring) -- Execute SQL Command to Insert Data To Destination Table
	END
	--------

IF @@ERROR <>0 or @HasIdentity = 1
BEGIN
	PRINT 'Error in inserting into .' + @MyTable
END

PRINT' --------------------------------------------------------------------------------------------------------------------------------------------'








GO
