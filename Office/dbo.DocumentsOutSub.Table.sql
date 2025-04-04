USE [Amodat712]
GO
/****** Object:  Table [dbo].[DocumentsOutSub]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsOutSub](
	[AmodatDocTypeID] [int] NOT NULL,
	[DocNum] [dbo].[utDocumentIDLong] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[SerialID] [dbo].[utSerialIDLong] NOT NULL,
	[MainProductID] [dbo].[utProductIDLong] NOT NULL,
	[IsParentProduct] [bit] NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[OtherProductID] [dbo].[utProductIDLong] NOT NULL,
	[WarehouseID] [dbo].[utWarehouseIDLong] NOT NULL,
	[Barcode] [nvarchar](30) NOT NULL,
	[PackQuantity] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[QuantityBad] [decimal](18, 2) NOT NULL,
	[QuantityPlanned] [decimal](18, 2) NOT NULL,
	[Bonus] [decimal](18, 2) NOT NULL,
	[Discount1] [decimal](18, 2) NOT NULL,
	[Discount2] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[CurrencyCode] [nvarchar](40) NULL,
	[CurrencyRate] [decimal](9, 2) NULL,
	[TotalSumRow] [decimal](18, 4) NOT NULL,
	[VatRow] [decimal](9, 2) NOT NULL,
	[TotalVatRow] [decimal](18, 4) NOT NULL,
	[TotalSumVatRow] [decimal](18, 4) NOT NULL,
	[MinPrice] [decimal](18, 4) NOT NULL,
	[CostPrice] [decimal](18, 4) NOT NULL,
	[Remark] [nvarchar](255) NOT NULL,
	[AdditionalChargeProductID] [dbo].[utProductIDLong] NOT NULL,
	[DateIssued] [datetime] NOT NULL,
	[Params] [int] NOT NULL,
	[SaleParams] [int] NOT NULL,
	[SaleID] [nvarchar](50) NOT NULL,
	[InStock] [decimal](18, 2) NOT NULL,
	[UnitPerPack] [decimal](9, 4) NOT NULL,
	[Unit] [nvarchar](20) NOT NULL,
	[UnitWeight] [decimal](18, 2) NOT NULL,
	[TotalWeightRow] [decimal](18, 2) NOT NULL,
	[UnitVolume] [decimal](18, 2) NOT NULL,
	[TotalVolumeRow] [decimal](18, 2) NOT NULL,
	[IsIncludeInCalculation] [bit] NOT NULL,
	[BasedOnOriginalLineNum] [int] NULL,
	[MobileParams] [int] NOT NULL,
	[RelationReference] [nvarchar](50) NULL,
	[MobileColorCode] [dbo].[utColorCode] NOT NULL,
	[SupplyerID] [nvarchar](50) NULL,
	[ApprovedRequests] [nvarchar](512) NOT NULL,
	[Extra1] [nvarchar](255) NULL,
	[Extra2] [nvarchar](255) NULL,
	[Extra3] [nvarchar](255) NULL,
	[Extra4] [nvarchar](255) NULL,
	[Extra5] [nvarchar](255) NULL,
	[Extra6] [nvarchar](255) NULL,
	[Extra7] [nvarchar](255) NULL,
	[Extra8] [nvarchar](255) NULL,
	[Extra9] [nvarchar](1024) NULL,
	[Extra10] [nvarchar](1024) NULL,
	[RecordStatus] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_DocumentsOutSub] PRIMARY KEY CLUSTERED 
(
	[AmodatDocTypeID] ASC,
	[DocNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_ProductID]  DEFAULT ('') FOR [ProductID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_ProductName]  DEFAULT ('') FOR [ProductName]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_SerialID]  DEFAULT ('') FOR [SerialID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_IsFromBranch]  DEFAULT ('') FOR [MainProductID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_IsParentProduct]  DEFAULT ((0)) FOR [IsParentProduct]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_DepartmentName]  DEFAULT ('') FOR [DepartmentName]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_OtherProductID]  DEFAULT ('') FOR [OtherProductID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_WarehouseID]  DEFAULT ((0)) FOR [WarehouseID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Barcode]  DEFAULT ('') FOR [Barcode]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_PackQuantity]  DEFAULT ((0)) FOR [PackQuantity]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_QuantityBad]  DEFAULT ((0)) FOR [QuantityBad]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_QuantityPlanned]  DEFAULT ((0)) FOR [QuantityPlanned]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Bonus]  DEFAULT ((0)) FOR [Bonus]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Discount]  DEFAULT ((0)) FOR [Discount1]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Discount2]  DEFAULT ((0)) FOR [Discount2]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_CurrencyCode]  DEFAULT ('') FOR [CurrencyCode]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_CurrencyRate]  DEFAULT ((1)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_TotalSum]  DEFAULT ((0)) FOR [TotalSumRow]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Vat]  DEFAULT ((0)) FOR [VatRow]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_TotalVat]  DEFAULT ((0)) FOR [TotalVatRow]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_TotalSumVat]  DEFAULT ((0)) FOR [TotalSumVatRow]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_MinPrice]  DEFAULT ((0)) FOR [MinPrice]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_CostPrice]  DEFAULT ((0)) FOR [CostPrice]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_AdditionalChargeProductID]  DEFAULT ('') FOR [AdditionalChargeProductID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_DateIssued]  DEFAULT ((0)) FOR [DateIssued]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_Params]  DEFAULT ((0)) FOR [Params]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_SaleParams]  DEFAULT ((0)) FOR [SaleParams]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_SaleID]  DEFAULT ('') FOR [SaleID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_PricePerUnit]  DEFAULT ((0)) FOR [InStock]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_UnitPerPack]  DEFAULT ((1)) FOR [UnitPerPack]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_OrdersSub_unit]  DEFAULT ('') FOR [Unit]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_UnitWeight]  DEFAULT ((0)) FOR [UnitWeight]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Weight]  DEFAULT ((0)) FOR [TotalWeightRow]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_UnitVolume]  DEFAULT ((0)) FOR [UnitVolume]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Volume]  DEFAULT ((0)) FOR [TotalVolumeRow]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_IsExcludeFromCalculation]  DEFAULT ((1)) FOR [IsIncludeInCalculation]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_LocalParams]  DEFAULT ((0)) FOR [MobileParams]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_RelationReference]  DEFAULT ('') FOR [RelationReference]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_LocalColorCode]  DEFAULT ('') FOR [MobileColorCode]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_SupplyerID]  DEFAULT ('') FOR [SupplyerID]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_ApprovedRequests]  DEFAULT ('') FOR [ApprovedRequests]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra2]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra3]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra4]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra5]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra51]  DEFAULT ('') FOR [Extra6]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra51_1]  DEFAULT ('') FOR [Extra7]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra51_2]  DEFAULT ('') FOR [Extra8]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra51_3]  DEFAULT ('') FOR [Extra9]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_Extra51_4]  DEFAULT ('') FOR [Extra10]
GO
ALTER TABLE [dbo].[DocumentsOutSub] ADD  CONSTRAINT [DF_DocumentsOutSub_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hold the main productID or '''' for regular' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutSub', @level2type=N'COLUMN',@level2name=N'MainProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Parameters' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutSub', @level2type=N'COLUMN',@level2name=N'Params'
GO
