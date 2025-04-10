USE [demo_integration]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GetCustomerFullName]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[ufn_GetCustomerFullName] (@CustomerID INT)
RETURNS NVARCHAR(101)
AS
BEGIN
    DECLARE @FullName NVARCHAR(101);
    SELECT @FullName = FirstName + ' ' + LastName FROM erp_demo..Customers WHERE CustomerID = @CustomerID;
    RETURN @FullName;
END;
GO
