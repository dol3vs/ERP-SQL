USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProductsRel_Batch1]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[ClientProductsRel_Batch1]
as
-- Spec
select distinct 
ClientProductID as ClientID,
ClientProductID ,
2 as OrderBy
 from 

ClientProducts_Batch1






GO
