USE [Amodat712]
GO
/****** Object:  Table [dbo].[ProductsSales]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsSales](
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[SaleID] [dbo].[utSaleID] NOT NULL,
	[SaleParam] [int] NOT NULL,
 CONSTRAINT [PK_ProductsSales] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductsSales] ADD  CONSTRAINT [DF_ProductsSales_SaleParam]  DEFAULT (0) FOR [SaleParam]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1- Buy , 2- Get , 3 - Both' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsSales', @level2type=N'COLUMN',@level2name=N'SaleParam'
GO
