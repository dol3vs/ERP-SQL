USE [AmodatHASHIntegration]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Table_TotalsPerAgent]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_Table_TotalsPerAgent](@Date Nvarchar(40) ,@AgentID Nvarchar(40))
returns @T table(Totalg decimal(18,2),Totalt decimal(18,2),DateF datetime)
AS

begin

	declare @DateF datetime
	declare @DateT datetime

	set @DateF = LEFT(@Date,8)
	--print @DateF
	set @DateT = RIGHT(@Date,8)
	--print @DateT

	if @DateF = @DateT 
		begin
			insert into @T(Totalg,Totalt,DateF)
			
			select Totalg,Totalt,@DateF [Date] from (

			select Convert(decimal(18,2),Sum(STOCK.TFtal)) totalG from LNKHHH.demo.dbo.STOCK  STOCK
			where stock.documentid in ('31','32') and Month(STOCK.ValueDate) = Month(getdate()) and Year(STOCK.ValueDate) = Year(getdate())
			and STOCK.AGENT = @AgentID) G
			cross join 
			(select  Convert(decimal(18,2),Sum(totalSum)) Totalt from Targets_ActualSalesDocs 
			where agentID = @AgentID and  Month(CreateDate) = Month(getdate()) and Year(CreateDate) = Year(getdate())) S
		
		end
		else 
		begin
			insert into @T(Totalg,Totalt,DateF)
			select Totalg,Totalt,@DateF [Date] from (

			select Convert(decimal(18,2),Sum(STOCK.TFtal)) totalG from LNKHHH.demo.dbo.STOCK  STOCK
		
			where stock.documentid in ('31','32') and STOCK.ValueDate between  @DateF and @DateT
			and STOCK.AGENT = @AgentID) G
			cross join 
			(select Convert(decimal(18,2),Sum(totalSum)) Totalt from Targets_ActualSalesDocs where agentID = @AgentID and CreateDate between  @DateF and @DateT) S
		end
	  return
end
GO
