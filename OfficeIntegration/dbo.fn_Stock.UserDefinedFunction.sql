USE [AmodatHASHIntegration]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Stock]    Script Date: 02-Apr-25 10:25:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_Stock](@ProductID nvarchar(40),@ProductName Nvarchar(100))
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	--Select @ClientID = @ClientID + '%'
	SELECT  W.ProductID,ProductName,W.InStock from AmodatHASH.dbo.WarehouseStock W 
		inner join AmodatHASH.dbo.Products P 
		on W.ProductID = P.ProductID
		Where W.ProductID like '%' + Replace(@ProductID ,'*','') + '%'

union

	SELECT  W.ProductID,ProductName,W.InStock from AmodatHASH.dbo.WarehouseStock W 
		inner join AmodatHASH.dbo.Products P 
		on W.ProductID = P.ProductID
		Where @ProductID = '' and @ProductName = ''

union

	SELECT  W.ProductID,ProductName,W.InStock from AmodatHASH.dbo.WarehouseStock W 
		inner join AmodatHASH.dbo.Products P 
		on W.ProductID = P.ProductID
		Where ProductName like '%' +  Replace(@ProductName ,'*','') +'%'
)


GO
