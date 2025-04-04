USE [demo]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemKey] [varchar](20) NULL,
	[ItemName] [varchar](100) NULL,
	[ForignName] [varchar](100) NULL,
	[SortGroup] [int] NULL,
	[Filter] [varchar](10) NULL,
	[Price] [float] NULL,
	[Currency] [varchar](5) NULL,
	[PurchPrice] [float] NULL,
	[PurchCurrency] [varchar](5) NULL,
	[LastPurchDate] [datetime] NULL,
	[Quantity] [float] NULL,
	[VatExampt] [tinyint] NULL,
	[DiscountCode] [varchar](5) NULL,
	[DiscountPrc] [float] NULL,
	[SalesUnit] [varchar](5) NULL,
	[PurchaseUnit] [varchar](5) NULL,
	[Localization] [varchar](50) NULL,
	[BarCode] [varchar](20) NULL,
	[Weight] [float] NULL,
	[Volume] [float] NULL,
	[DutyPrc] [float] NULL,
	[WholesaleTaxPrc] [float] NULL,
	[RetailTaxPrc] [float] NULL,
	[DutyType] [varchar](50) NULL,
	[ConverF] [int] NULL,
	[ProductionTime] [int] NULL,
	[MinPurchase] [float] NULL,
	[StockLevel] [float] NULL,
	[ReorderQuant] [float] NULL,
	[StockCountDate] [datetime] NULL,
	[TreeType] [int] NULL,
	[DatF1] [datetime] NULL,
	[DatF2] [datetime] NULL,
	[DatF3] [datetime] NULL,
	[DatF4] [datetime] NULL,
	[SuF1] [float] NULL,
	[SuF2] [float] NULL,
	[SuF3] [float] NULL,
	[SuF4] [float] NULL,
	[SuF5] [float] NULL,
	[SuF6] [float] NULL,
	[SuF7] [float] NULL,
	[SuF8] [float] NULL,
	[LastDiffer] [float] NULL,
	[DefaultWarehouse] [int] NULL,
	[DemandPerDay] [float] NULL,
	[DemandPerMonth] [float] NULL,
	[SDDemandPerMonth] [float] NULL,
	[StorageCost] [float] NULL,
	[MaxStoragePeriod] [float] NULL,
	[CostOfShortage] [float] NULL,
	[FollowUp] [tinyint] NULL,
	[Dumi] [tinyint] NULL,
	[SalesAcc] [varchar](15) NULL,
	[StockPerUnit] [tinyint] NULL,
	[PurchAcc] [varchar](15) NULL,
	[VatFreeSalesAcc] [varchar](15) NULL,
	[PrmUse] [tinyint] NULL,
	[Expiring] [tinyint] NULL,
	[NProductionTime] [float] NULL,
	[ExFile] [varchar](100) NULL,
	[SdDemandPerDay] [float] NULL,
	[ExPIc] [varchar](100) NULL,
	[VatPrc] [float] NULL,
	[ImplTaxPrc] [float] NULL,
	[KFormat] [int] NULL,
	[Kdays] [int] NULL,
	[Expected] [float] NULL,
	[WeightItem] [tinyint] NULL,
	[BDate] [datetime] NULL,
	[InstMonths] [int] NULL,
	[InstFlag] [tinyint] NULL,
	[ItemNote] [varchar](250) NULL,
	[IntrItem] [tinyint] NULL,
	[CostCode] [varchar](8) NULL,
	[BUseFID] [int] NULL,
	[PurchPriceRate] [float] NULL,
	[MatrixFlag] [tinyint] NULL,
	[PurchPriceProto] [float] NULL,
	[LastQuantity] [int] NULL,
	[ExtDate1] [datetime] NULL,
	[ExtDate2] [datetime] NULL,
	[ExtText1] [varchar](250) NULL,
	[ExtText2] [varchar](250) NULL,
	[ExtFlag1] [tinyint] NULL,
	[ExtFlag2] [tinyint] NULL,
	[ExtFlag3] [tinyint] NULL,
	[ExtFlag4] [tinyint] NULL,
	[TaxItemsCode] [int] NULL,
 CONSTRAINT [PKNC_Items_ID_1063] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SortGroup]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [PurchPrice]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [VatExampt]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [DiscountPrc]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Weight]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Volume]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [DutyPrc]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [WholesaleTaxPrc]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [RetailTaxPrc]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ConverF]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ProductionTime]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [MinPurchase]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [StockLevel]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ReorderQuant]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [TreeType]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF1]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF2]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF3]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF4]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF5]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF6]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF7]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SuF8]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [LastDiffer]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [DefaultWarehouse]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [DemandPerDay]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [DemandPerMonth]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SDDemandPerMonth]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [StorageCost]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [MaxStoragePeriod]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [CostOfShortage]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [FollowUp]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Dumi]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [StockPerUnit]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [PrmUse]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Expiring]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [NProductionTime]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [SdDemandPerDay]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [VatPrc]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ImplTaxPrc]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [KFormat]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Kdays]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [Expected]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [WeightItem]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((12)) FOR [InstMonths]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [InstFlag]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [IntrItem]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [PurchPriceRate]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [MatrixFlag]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [LastQuantity]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ExtFlag1]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ExtFlag2]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ExtFlag3]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [ExtFlag4]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [CK_ITMKEY_NOTNULL] CHECK  (([ItemKey] IS NOT NULL))
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [CK_ITMKEY_NOTNULL]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [CK_STOCKPERUNIT_NOTNULL] CHECK  (([StockPerUnit] IS NOT NULL))
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [CK_STOCKPERUNIT_NOTNULL]
GO
