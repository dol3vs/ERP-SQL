USE [Amodat712]
GO
/****** Object:  Table [dbo].[ProductsPriceLists]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsPriceLists](
	[PriceListID] [dbo].[utPriceListIDLong] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[MinQuantity] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 4) NULL,
	[CurrencyCode] [nvarchar](40) NULL,
	[CurrencyRate] [decimal](9, 2) NULL,
	[Discount] [decimal](9, 2) NULL,
	[MinPrice] [decimal](18, 4) NULL,
	[CostPrice] [decimal](18, 4) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ProductsPriceLists] PRIMARY KEY CLUSTERED 
(
	[PriceListID] ASC,
	[ProductID] ASC,
	[MinQuantity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPrices_PriceListNum]  DEFAULT ('') FOR [PriceListID]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPrices_ProductID]  DEFAULT ('') FOR [ProductID]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPrices_MinQuantity]  DEFAULT ((0)) FOR [MinQuantity]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPrices_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPriceLists_CurrencyCode]  DEFAULT ('') FOR [CurrencyCode]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPriceLists_CurrencyRate]  DEFAULT ((1)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPriceLists_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPriceLists_MinPrice]  DEFAULT ((0)) FOR [MinPrice]
GO
ALTER TABLE [dbo].[ProductsPriceLists] ADD  CONSTRAINT [DF_ProductsPriceLists_CostPrice]  DEFAULT ((0)) FOR [CostPrice]
GO
