USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_DelLogExport]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DelLogExport] AS

delete from LogExportBO where ServerDate < getdate()-6





GO
