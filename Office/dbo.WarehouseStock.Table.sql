USE [Amodat712]
GO
/****** Object:  Table [dbo].[WarehouseStock]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseStock](
	[WarehouseID] [dbo].[utWarehouseIDLong] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[InStock] [decimal](18, 2) NULL,
	[Ordered] [decimal](18, 2) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_WarehouseStock] PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WarehouseStock] ADD  CONSTRAINT [DF_ProductsStorageQuantity_StorageID]  DEFAULT ('') FOR [WarehouseID]
GO
ALTER TABLE [dbo].[WarehouseStock] ADD  CONSTRAINT [DF_ProductsStorageQuantity_ProductID]  DEFAULT ('') FOR [ProductID]
GO
ALTER TABLE [dbo].[WarehouseStock] ADD  CONSTRAINT [DF_ProductsStorageQuantity_Quantity]  DEFAULT (0) FOR [InStock]
GO
ALTER TABLE [dbo].[WarehouseStock] ADD  CONSTRAINT [DF_ProductsStorageQuantity_Ordered]  DEFAULT (0) FOR [Ordered]
GO
