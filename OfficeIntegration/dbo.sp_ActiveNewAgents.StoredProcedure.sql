USE [AmodatHASHIntegration]
GO
/****** Object:  StoredProcedure [dbo].[sp_ActiveNewAgents]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE  [dbo].[sp_ActiveNewAgents]
AS 

declare @tblAgents table (AgentID nvarchar(40))
Declare @AgentID nvarchar(50)

insert @tblAgents (AgentID)
Select AgentID From AmodatHASH.dbo.Agents


while exists (select * from @tblAgents) 
BEGIN
	Select top 1 @AgentID = AgentID from @tblAgents

	print '@AgentID: ' + @AgentID

	--EntityUserRel 
	if not Exists(select * from AmodatHASH.dbo.EntityUserRel where AgentID = @AgentID)
	Begin
		if not Exists(select * from AmodatHASH.dbo.EntityUserRel)
		Begin
			--Insert All Entities For @AgentID
			print 'Insert All Entities For @AgentID: ' + @AgentID
			Insert AmodatHASH.dbo.EntityUserRel (CmdName,AgentID)
			select Entities.CmdName,@AgentID as AgentID  From AmodatHASH.dbo.Entities
		End
		Else	
		Begin
			--Insert Entities that already relate to another agent For @AgentID
			Declare @AgentIDWithEntities nvarchar(50)
			select top 1 @AgentIDWithEntities = AgentID From AmodatHASH.dbo.EntityUserRel

			print 'Insert Entities that already relate to agent: '+ @AgentIDWithEntities +' For @AgentID: ' + @AgentID

			Insert AmodatHASH.dbo.EntityUserRel (CmdName,AgentID)
			select CmdName,@AgentID as AgentID  From AmodatHASH.dbo.EntityUserRel 
			where AgentID = @AgentIDWithEntities
		End
	End
	

	--DocsTypeAgentRel
	Declare @WarehouseID nvarchar(50)
	Select @WarehouseID = MainWarehouseID From AmodatHASH.dbo.Agents where AgentID = @AgentID

	if not Exists(select * from AmodatHASH.dbo.DocsTypeAgentRel where AgentID = @AgentID)
	Begin
		if not Exists(select * from AmodatHASH.dbo.DocsTypeAgentRel)
		Begin
			--Insert Default DocsTypeAgentRel For @AgentID
			print 'Insert Default DocsTypeAgentRel For @AgentID: ' + @AgentID
			Insert AmodatHASH.dbo.DocsTypeAgentRel (AmodatDocTypeID,AgentID,WarehouseID)
			select AmodatDocTypeID,@AgentID as AgentID ,IsNull(@WarehouseID,'') as WarehouseID From AmodatHASH.dbo.DocsType
			Where AmodatDocTypeID in (13,2,7,1,14,16)
		End
		Else	
		Begin
			--Insert DocsTypeAgentRel that already relate to another agent For @AgentID
			Declare @AgentIDWithDocsType nvarchar(50)
			select top 1 @AgentIDWithDocsType = AgentID From AmodatHASH.dbo.DocsTypeAgentRel

			print 'Insert DocsTypeAgentRel that already relate to agent: '+ @AgentIDWithEntities +' For @AgentID: ' + @AgentID

			Insert AmodatHASH.dbo.DocsTypeAgentRel (AmodatDocTypeID,AgentID,WarehouseID)
			select AmodatDocTypeID,@AgentID as AgentID ,IsNull(@WarehouseID,'') as WarehouseID   From AmodatHASH.dbo.DocsTypeAgentRel 
			where AgentID = @AgentIDWithDocsType
		End
	End
	
	-- for vansale
	--1 add 99 DocType to DocsTypeAgentRel
	--2 fill Pools Table 


	delete from @tblAgents where AgentID = @AgentID
END



GO
