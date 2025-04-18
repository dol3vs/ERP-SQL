USE [demo_integration]
GO
/****** Object:  View [dbo].[vw_Clients_Clean]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Clients_Clean] AS
SELECT
    ClientID,
    UPPER(LTRIM(RTRIM(ClientName))) AS ClientName,
    dbo.fn_StandardizePhone(Phone) AS Phone,
    Email,
    Address
FROM Demo_ERP.dbo.Clients
WHERE Email IS NOT NULL;
GO
