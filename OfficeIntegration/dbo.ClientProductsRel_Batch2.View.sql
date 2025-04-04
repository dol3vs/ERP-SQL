USE [AmodatIntegrationHHH_Client]
GO
/****** Object:  View [dbo].[ClientProductsRel_Batch2]    Script Date: 01-Apr-25 11:44:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  VIEW [dbo].[ClientProductsRel_Batch2]
AS
SELECT distinct [ClientProductID]
      ,Extra5 as ClientID
      ,3 as OrderBy
  FROM [ClientProducts_Batch2] CP
  INNER JOIN Clients_Batch C on CP.Extra5 collate database_default = C.ClientID
where C.Params <> 2

GO
