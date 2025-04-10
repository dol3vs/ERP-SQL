USE [demo_integration]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetRegionByClient]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetRegionByClient] (@ClientID INT)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @Region NVARCHAR(100)
    SELECT @Region = a.Region
    FROM Demo_ERP.dbo.Clients c
    JOIN Demo_ERP.dbo.Agents a ON c.ClientID % 5 = a.AgentID
    WHERE c.ClientID = @ClientID

    RETURN ISNULL(@Region, 'Unknown')
END;
GO
