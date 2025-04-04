USE [demo]
GO
/****** Object:  Table [dbo].[StockMoves]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMoves](
	[StockID] [int] NULL,
	[ItemName] [varchar](100) NULL,
	[ItemKey] [varchar](20) NULL,
	[Warehouse] [int] NULL,
	[Agent] [int] NULL,
	[Reference] [int] NULL,
	[Details] [varchar](20) NULL,
	[DocumentID] [int] NULL,
	[DueDate] [datetime] NULL,
	[AlterNum] [varchar](25) NULL,
	[Unit] [varchar](5) NULL,
	[Status] [smallint] NULL,
	[CurrencyCode] [varchar](5) NULL,
	[Rate] [float] NULL,
	[Price] [float] NULL,
	[Quantity] [float] NULL,
	[TFtal] [float] NULL,
	[DiscountPrc] [float] NULL,
	[Tree] [smallint] NULL,
	[BaseMoveID] [int] NULL,
	[SupplyQuantity] [float] NULL,
	[BaseQuantity] [float] NULL,
	[BaseDate] [datetime] NULL,
	[SaleTaxPrc] [float] NULL,
	[CommisionPrc] [float] NULL,
	[BaseFlag] [tinyint] NULL,
	[VatExampt] [tinyint] NULL,
	[TreeFatherMoveID] [int] NULL,
	[Packs] [float] NULL,
	[SupplyPacks] [float] NULL,
	[CommisionPaid] [tinyint] NULL,
	[Instance] [varchar](50) NULL,
	[BurdonOn] [int] NULL,
	[BurdInstance] [varchar](50) NULL,
	[CancelDate] [datetime] NULL,
	[PurchQuantity] [float] NULL,
	[JurnalAcc] [varchar](15) NULL,
	[BurdInstItemKey] [varchar](20) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpireDate] [datetime] NULL,
	[BranchID] [int] NULL,
	[ProductionID] [int] NULL,
	[InstanceFrom] [smallint] NULL,
	[BatchNum] [varchar](50) NULL,
	[Localization] [varchar](50) NULL,
	[WarrentyDate] [datetime] NULL,
	[FMPay] [tinyint] NULL,
	[SourceMoveID] [int] NULL,
	[VatPrc] [float] NULL,
	[TVat] [float] NULL,
	[PayAcc] [varchar](15) NULL,
	[MIVID] [int] NULL,
	[AssKey] [varchar](15) NULL,
	[OriginalQnt] [float] NULL,
	[OriginalBaseQnt] [float] NULL,
	[OPrice] [float] NULL,
	[OPriceCurrencyCode] [varchar](5) NULL,
	[KupGift] [tinyint] NULL,
	[TftalVat] [float] NULL,
	[LineNum] [int] NULL,
	[BaseLineNum] [int] NULL,
	[ExtraText1] [varchar](50) NULL,
	[ExtraText2] [varchar](50) NULL,
	[ExtraSum1] [float] NULL,
	[ExtraSum2] [float] NULL,
	[VatPrice] [float] NULL,
	[CounterVal] [float] NULL,
	[BaseDocType] [int] NULL,
	[LineNoForSorting] [int] NULL,
	[ODiscountPrc] [float] NULL,
	[CountQuant] [float] NULL,
	[BurdLineClose] [tinyint] NULL,
	[ExFile] [varchar](100) NULL,
	[CancelBalUsef] [int] NULL,
	[CancelBalQuant] [float] NULL,
	[StockValPrice] [float] NULL,
	[PurchPrice] [float] NULL,
	[PurchPriceCurr] [varchar](5) NULL,
	[GPFlag] [tinyint] NULL,
	[RePriced] [tinyint] NULL,
	[ORate] [float] NULL,
	[ShopFlags] [int] NULL,
	[CostCode] [varchar](8) NULL,
	[JurnalAccSource] [tinyint] NULL,
	[AlterName] [varchar](100) NULL,
	[ExtraNum1] [int] NULL,
	[ExtraNum2] [int] NULL,
	[ExtraDate1] [datetime] NULL,
	[ExtraDate2] [datetime] NULL,
	[PurchPriceRate] [float] NULL,
	[TreeVer] [int] NULL,
	[MoveCancel] [tinyint] NULL,
	[CustomerOrderNo] [tinyint] NULL,
	[CloseLineType] [tinyint] NULL,
	[TftalDlr] [float] NULL,
	[BaseMoveIdBCancel] [int] NULL,
	[AdtSum1] [float] NULL,
	[AdtSum2] [float] NULL,
	[AdtSum3] [float] NULL,
	[AdtText1] [varchar](250) NULL,
	[AdtText2] [varchar](250) NULL,
	[AdtText3] [varchar](250) NULL,
	[AdtNum1] [int] NULL,
	[AdtNum2] [int] NULL,
	[AdtNum3] [int] NULL,
	[AdtDate1] [datetime] NULL,
	[AdtDate2] [datetime] NULL,
	[AdtDate3] [datetime] NULL,
	[EduCodeNum] [int] NULL,
	[EduCodeName] [varchar](250) NULL,
	[IDBeforeChange] [int] NULL,
	[TaxItemsCode] [int] NULL,
	[QuantToCancel] [float] NULL,
 CONSTRAINT [PKNC_StockMoves_ID_1931] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [StockID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Warehouse]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Agent]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Reference]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [DocumentID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((1)) FOR [Rate]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TFtal]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [DiscountPrc]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Tree]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BaseMoveID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [SupplyQuantity]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BaseQuantity]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [SaleTaxPrc]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CommisionPrc]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BaseFlag]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [VatExampt]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TreeFatherMoveID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [Packs]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [SupplyPacks]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CommisionPaid]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BurdonOn]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [PurchQuantity]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BranchID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ProductionID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [InstanceFrom]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [FMPay]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [SourceMoveID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [VatPrc]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TVat]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [MIVID]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [OriginalQnt]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [OriginalBaseQnt]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [OPrice]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [KupGift]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TftalVat]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [LineNum]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BaseLineNum]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ExtraSum1]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ExtraSum2]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [VatPrice]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CounterVal]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BaseDocType]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((9999999)) FOR [LineNoForSorting]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ODiscountPrc]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CountQuant]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BurdLineClose]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CancelBalUsef]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CancelBalQuant]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [StockValPrice]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [PurchPrice]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [GPFlag]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [RePriced]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ORate]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ShopFlags]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [JurnalAccSource]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ExtraNum1]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [ExtraNum2]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((1)) FOR [PurchPriceRate]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TreeVer]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [MoveCancel]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CustomerOrderNo]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [CloseLineType]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TftalDlr]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [BaseMoveIdBCancel]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [AdtSum1]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [AdtSum2]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [AdtSum3]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [AdtNum1]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [AdtNum2]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [AdtNum3]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [EduCodeNum]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [IDBeforeChange]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [TaxItemsCode]
GO
ALTER TABLE [dbo].[StockMoves] ADD  DEFAULT ((0)) FOR [QuantToCancel]
GO
