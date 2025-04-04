USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_Targets_UpdateTargetsFromSales]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_Targets_UpdateTargetsFromSales]
(
	@TypeUpdate nvarchar(50),
	@FromYear int,
	@CurrentYear int

)
 
 As
 
 
 if(@TypeUpdate = 'AgentsTarget')
 Begin

	Delete dbo.TargetAgentMonthly Where Year = @CurrentYear;
	Insert Into TargetAgentMonthly (AgentID,Year,Month,SumSaleTarget)
	Select AgentID,@CurrentYear,Month,TotalSum
	From 
	V_Targets_MonthlySalesByAgent Where Year = @FromYear And AgentID Is Not Null

end


if (@TypeUpdate = 'AgentsDepartmentsTarget')
begin
	Delete dbo.AgentDepartmentsMonthlyTarget Where Year = @CurrentYear;
	Insert Into AgentDepartmentsMonthlyTarget (AgentID,Year,Month,DepartmentID,SumSaleTarget)
	Select AgentID,@CurrentYear,Month,DepartmentID,TotalSum
	From 
	V_Targets_MonthlySalesByAgentAndDepartments Where Year = @FromYear And AgentID Is Not Null
end
 
 
 
 if (@TypeUpdate = 'ClientsTarget')
begin
	Delete dbo.TargetClientMonthly Where Year = @CurrentYear;
	Insert Into TargetClientMonthly (ClientID,Year,Month,SumSaleTarget)
	Select ClientID,@CurrentYear,Month,TotalSum
	From 
	V_Targets_MonthlySalesByClient Where Year = @FromYear And ClientID Is Not Null
end



GO
