USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_Targets_ImportLocalTabels]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Proc [dbo].[SP_Targets_ImportLocalTabels]
as
begin tran

drop table Targets_ActualSalesDocs
select * into Targets_ActualSalesDocs from V_Targets_ActualSalesDocs


drop table Targets_ActualSalesDocsSub
select * into Targets_ActualSalesDocsSub from V_Targets_ActualSalesDocsSub


commit


GO
