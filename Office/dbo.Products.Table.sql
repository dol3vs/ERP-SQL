USE [Amodat712]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[MainProductID] [dbo].[utProductIDLong] NOT NULL,
	[IsParent] [bit] NULL,
	[DepartmentID] [dbo].[utDepartmentIDLong] NOT NULL,
	[DiscountGroupID] [dbo].[utDiscountGroupIDLong] NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductForeignName] [nvarchar](100) NULL,
	[ProductDesc] [nvarchar](max) NULL,
	[ProductForeignDesc] [nvarchar](max) NULL,
	[StockStatus] [int] NOT NULL,
	[Barcode] [nvarchar](30) NULL,
	[DefaultOrderQty] [decimal](18, 2) NULL,
	[Unit] [nvarchar](20) NULL,
	[UnitPerPack] [decimal](9, 4) NULL,
	[UnitWeight] [decimal](18, 2) NULL,
	[UnitVolume] [decimal](18, 2) NULL,
	[Vat] [decimal](9, 2) NULL,
	[Remark] [nvarchar](255) NULL,
	[AdditionalChargeProductID] [dbo].[utProductIDLong] NOT NULL,
	[ImageName] [nvarchar](50) NULL,
	[SortField] [nvarchar](255) NULL,
	[Params] [int] NULL,
	[Extra1] [nvarchar](255) NULL,
	[Extra2] [nvarchar](255) NULL,
	[Extra3] [nvarchar](255) NULL,
	[Extra4] [nvarchar](255) NULL,
	[Extra5] [nvarchar](255) NULL,
	[TextColor] [dbo].[utColorName] NULL,
	[BackColor] [dbo].[utColorName] NULL,
	[MinQuantity] [decimal](18, 2) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
	[ProductLink] [nvarchar](500) NULL,
	[PDFFileName] [nvarchar](50) NULL,
	[AttachmentsData] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY NONCLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_RootProduct]  DEFAULT ('') FOR [MainProductID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsParent]  DEFAULT ((0)) FOR [IsParent]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DepartmentID]  DEFAULT ('') FOR [DepartmentID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DiscountGroupID]  DEFAULT ('') FOR [DiscountGroupID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Description]  DEFAULT ('') FOR [ProductName]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductForeignName]  DEFAULT ('') FOR [ProductForeignName]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDesc]  DEFAULT ('') FOR [ProductDesc]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductForeignDesc]  DEFAULT ('') FOR [ProductForeignDesc]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_StockStatus]  DEFAULT ((0)) FOR [StockStatus]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Barcode]  DEFAULT ('') FOR [Barcode]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DefaultOrderQty]  DEFAULT ((0)) FOR [DefaultOrderQty]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Unit]  DEFAULT ('') FOR [Unit]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPerPack]  DEFAULT ((1)) FOR [UnitPerPack]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitWeight]  DEFAULT ((0)) FOR [UnitWeight]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitVolume]  DEFAULT ((0)) FOR [UnitVolume]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Vat]  DEFAULT ((0)) FOR [Vat]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_AdditionalChargeProductID]  DEFAULT ('') FOR [AdditionalChargeProductID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ImageName]  DEFAULT ('') FOR [ImageName]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_SortField]  DEFAULT ('') FOR [SortField]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Params]  DEFAULT ((0)) FOR [Params]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Global1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Global11]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Global12]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Global13]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Global14]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Color]  DEFAULT ('') FOR [TextColor]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_BackColorID]  DEFAULT ('') FOR [BackColor]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DefaultOrderQty1]  DEFAULT ((0)) FOR [MinQuantity]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_AttachmentsData]  DEFAULT ('') FOR [AttachmentsData]
GO
