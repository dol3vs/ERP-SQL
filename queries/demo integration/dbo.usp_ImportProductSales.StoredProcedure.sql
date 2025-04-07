USE [demo_integration]
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportProductSales]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ImportProductSales]
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DEMO.dbo.ProductSales (ProductID, ProductName, TotalSold, Revenue)
    SELECT ProductID, ProductName, TotalSold, Revenue
    FROM DEMO_Integration.dbo.vw_ProductSales;
END;
GO
