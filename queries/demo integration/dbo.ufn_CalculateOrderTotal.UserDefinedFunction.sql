USE [demo_integration]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_CalculateOrderTotal]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[ufn_CalculateOrderTotal] (@OrderID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @Total DECIMAL(10,2);
    SELECT @Total = SUM(Quantity * UnitPrice)
    FROM erp_demo..OrderDetails
    WHERE OrderID = @OrderID;
    RETURN @Total;
END;
GO
