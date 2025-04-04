USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[sp_HHHInterfaceStatus]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HHHInterfaceStatus]
	-- Add the parameters for the stored procedure here
	@IsInterfaceRunning bit out,
	@IsHaveDocsForExport bit out
AS


if  exists (select * from LNKHHH.demo.dbo.SEMAP with (nolock) where SemapType = 'MlayIn')
begin
	select @IsInterfaceRunning = 1;
End
Else
begin
	select @IsInterfaceRunning = 0;
End

if  exists (select * from IMPORTSTOCK_HHH )
begin
	select @IsHaveDocsForExport = 1;
End
Else
begin
	select @IsHaveDocsForExport = 0;
End


GO
