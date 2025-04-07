USE [demo_integration]
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportClients]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ImportClients]
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DEMO.dbo.Clients (ClientID, ClientName, Phone, Email, Address)
    SELECT ClientID, ClientName, Phone, Email, Address
    FROM DEMO_Integration.dbo.vw_Clients_Clean;
END;
GO
