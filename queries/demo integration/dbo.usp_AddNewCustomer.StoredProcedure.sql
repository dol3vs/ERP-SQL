USE [demo_integration]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddNewCustomer]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_AddNewCustomer]
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Email NVARCHAR(100),
    @Phone NVARCHAR(20),
    @Country NVARCHAR(50)
AS
BEGIN
    INSERT INTO erp_demo..Customers (FirstName, LastName, Email, Phone, Country)
    VALUES (@FirstName, @LastName, @Email, @Phone, @Country);
END;
GO
