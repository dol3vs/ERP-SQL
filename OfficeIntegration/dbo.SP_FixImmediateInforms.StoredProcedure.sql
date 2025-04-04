USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[SP_FixImmediateInforms]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[SP_FixImmediateInforms]
as

declare @id int
declare @AgentID Nvarchar(40)
declare @ReportDate date
declare @EndDate datetime


declare @tbl table (Id int,AgentID nvarchar(40),ReportDate Date)

insert into @tbl(id,AgentID,ReportDate)

select id,AgentID,ReportDate from ImmediateInforms where EndDate is null and ReportDate <> convert(date,getdate())


while exists (select * from @tbl)

	begin
		select top 1 @id = id,@AgentID= AgentID, @ReportDate = ReportDate from @tbl order by ID 

		select @EndDate = MAX(DocEndTime)  from AModat..DocumentsoutMain where agentid = @AgentID and Convert(Date,CreateDate) =  @ReportDate
		update ImmediateInforms set EndDate = @EndDate where ID = @id
	--select top 10 * from AModat..DocumentsoutMain order by TransmitDate desc
		delete from @tbl where ID = @id
	end


GO
