USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_Images]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[SP_Images] as

SET NOCOUNT ON

drop table imageFiles

DECLARE @Command VARCHAR(100)
SET @Command = 'dir C:\amodat\download\images\ /b /s '

DECLARE @Folder VARCHAR(100)
SET @Folder = 'C:\amodat\download\images\'

DECLARE @FilesInAFolder TABLE  (FileNamesWithFolder NVARCHAR(500))
INSERT INTO @FilesInAFolder
EXEC MASTER..xp_cmdshell @Command

; WITH CTE AS
(
  SELECT REVERSE(FileNamesWithFolder) ReverseFileNames FROM @FilesInAFolder
)



SELECT  REVERSE ( LEFT (ReverseFileNames, CHARINDEX ('\', ReverseFileNames)-1)) as ImageName
      ,replace( REVERSE ( LEFT (ReverseFileNames, CHARINDEX ('\', ReverseFileNames)-1)),'.jpg','') as ProductID
      into imageFiles 
FROM  CTE
WHERE ReverseFileNames IS NOT NULL




GO
