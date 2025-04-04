USE [demo]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentID] [int] NULL,
	[DocNumber] [int] NULL,
	[Status] [smallint] NULL,
	[AccountKey] [varchar](15) NULL,
	[AccountName] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[Phone] [varchar](30) NULL,
	[Batch] [int] NULL,
	[TerminalDoc] [tinyint] NULL,
	[ValueDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[PayDate] [datetime] NULL,
	[Copies] [smallint] NULL,
	[TransType] [varchar](5) NULL,
	[VatFreeTransType] [varchar](5) NULL,
	[DiscountPrc] [float] NULL,
	[TFtal] [float] NULL,
	[VatPrc] [float] NULL,
	[TFtalVatFree] [float] NULL,
	[TFtalVat] [float] NULL,
	[Reference] [int] NULL,
	[Remarks] [varchar](250) NULL,
	[PrintStyle] [smallint] NULL,
	[OriginalPrinted] [tinyint] NULL,
	[Details] [varchar](250) NULL,
	[StockBatch] [int] NULL,
	[Warehouse] [int] NULL,
	[Agent] [int] NULL,
	[TaxType] [smallint] NULL,
	[EvalCurrency] [varchar](5) NULL,
	[Currency] [varchar](5) NULL,
	[FatherPriceList] [int] NULL,
	[SonPriceList] [int] NULL,
	[TransStore] [int] NULL,
	[TransAgent] [int] NULL,
	[ProtocolID] [int] NULL,
	[ExportAddr] [varchar](250) NULL,
	[UseFID] [int] NULL,
	[BranchID] [int] NULL,
	[Rate] [float] NULL,
	[MainRate] [float] NULL,
	[DiscountPrcR] [float] NULL,
	[IssueDate] [datetime] NULL,
	[Quantity] [float] NULL,
	[Ref3] [int] NULL,
	[CostCode] [varchar](8) NULL,
	[CheqAccKey] [varchar](15) NULL,
	[CheqBackBy] [tinyint] NULL,
	[MarketingNetNum] [int] NULL,
	[ConID] [int] NULL,
	[BankPay] [tinyint] NULL,
	[InterFlag] [smallint] NULL,
	[pikadon] [tinyint] NULL,
	[SInvPrintStyle] [smallint] NULL,
	[ExtraText1] [varchar](50) NULL,
	[ExtraText2] [varchar](50) NULL,
	[ExtraText3] [varchar](50) NULL,
	[ExtraText4] [varchar](50) NULL,
	[ExtraText5] [varchar](50) NULL,
	[ExtraSum1] [float] NULL,
	[ExtraSum2] [float] NULL,
	[ExtraSum3] [float] NULL,
	[CRMAcc] [varchar](15) NULL,
	[Contact] [varchar](50) NULL,
	[KupaNum] [int] NULL,
	[PointsBalance] [float] NULL,
	[RntFlag] [int] NULL,
	[Ddeposit] [tinyint] NULL,
	[Ddsum] [float] NULL,
	[PayTotal] [float] NULL,
	[Miv] [int] NULL,
	[DEF_DUEDATE] [datetime] NULL,
	[DFT_ZELEM] [varchar](50) NULL,
	[DEF_ITEM_W] [tinyint] NULL,
	[DEF_DATE3] [datetime] NULL,
	[DFT_ZELEM_ITEM] [varchar](20) NULL,
	[LastStatus] [tinyint] NULL,
	[KUTime] [int] NULL,
	[KuChange] [float] NULL,
	[KuDate] [datetime] NULL,
	[KuZNum] [int] NULL,
	[DistLine] [int] NULL,
	[FMimshak] [tinyint] NULL,
	[KupaNumFix] [int] NULL,
	[ExFile] [varchar](100) NULL,
	[KupaNumBaUp] [int] NULL,
	[DDComm] [float] NULL,
	[RndSuf] [float] NULL,
	[BaseOrderStockId] [int] NULL,
	[ContactMail] [varchar](250) NULL,
	[MimshStatus] [smallint] NULL,
	[Osek874] [varchar](9) NULL,
	[RefNum] [int] NULL,
	[BurdType] [smallint] NULL,
	[CurrStat] [int] NULL,
	[CloseType] [tinyint] NULL,
	[CloseSum] [float] NULL,
	[ShopFlags] [int] NULL,
	[VatFree] [tinyint] NULL,
	[KbMatchFlag] [tinyint] NULL,
	[ExtraNum1] [int] NULL,
	[ExtraNum2] [int] NULL,
	[ExtraDate1] [datetime] NULL,
	[ExtraDate2] [datetime] NULL,
	[RefNumFlag] [tinyint] NULL,
	[OpenBaseBase] [tinyint] NULL,
	[VatFactor] [float] NULL,
	[CloseTypeKab] [tinyint] NULL,
	[ConLogID] [int] NULL,
	[DocCancel] [tinyint] NULL,
	[StationID] [varchar](30) NULL,
	[CloseTypeKabala] [tinyint] NULL,
	[CustomerOrderNo] [int] NULL,
	[DocCancelUsefID] [int] NULL,
	[DocCancelDate] [datetime] NULL,
	[DocCancelTime] [int] NULL,
	[ExtraRemarks] [varchar](250) NULL,
	[TftalDlr] [float] NULL,
	[TftalVatDlr] [float] NULL,
	[TftalVatFreeDlr] [float] NULL,
	[MasavConfirm] [int] NULL,
	[PrintTypeMailSend] [tinyint] NULL,
	[MasofCreateDate] [datetime] NULL,
	[MasofLogFrom] [varchar](250) NULL,
	[TaxApiNumber] [varchar](250) NULL,
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
	[ConIssueNum] [int] NULL,
	[TaxApiNumberFlag] [tinyint] NULL,
	[TaxApiNumberNum] [int] NULL,
	[TaxApiErrorText] [varchar](250) NULL,
	[TaxApiExtraText] [varchar](250) NULL,
	[BaseCancelDocID] [int] NULL,
	[PaymentMethodCode] [varchar](20) NULL,
	[RoundingMeth] [int] NULL,
	[ReceiptDonation] [smallint] NULL,
	[TaxEmergencyNumUsed] [tinyint] NULL,
	[BankCode] [varchar](3) NULL,
	[BranchCode] [varchar](5) NULL,
	[BankAccount] [varchar](20) NULL,
	[MarketingNet] [int] NULL,
 CONSTRAINT [PKNC_Stock_ID_1869] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DocumentID]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DocNumber]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TerminalDoc]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Copies]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DiscountPrc]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TFtal]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [VatPrc]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TFtalVatFree]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TFtalVat]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [PrintStyle]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [OriginalPrinted]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [StockBatch]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Warehouse]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TaxType]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [FatherPriceList]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [SonPriceList]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TransStore]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TransAgent]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ProtocolID]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [MainRate]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DiscountPrcR]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Ref3]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CheqBackBy]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [MarketingNetNum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ConID]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [BankPay]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [InterFlag]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [pikadon]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [SInvPrintStyle]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ExtraSum1]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ExtraSum2]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ExtraSum3]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KupaNum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [PointsBalance]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [RntFlag]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Ddeposit]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Ddsum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [PayTotal]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Miv]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DEF_ITEM_W]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [LastStatus]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KUTime]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KuChange]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KuZNum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DistLine]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [FMimshak]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KupaNumFix]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KupaNumBaUp]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DDComm]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [RndSuf]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [BaseOrderStockId]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [MimshStatus]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [RefNum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [BurdType]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CurrStat]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CloseType]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CloseSum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ShopFlags]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [VatFree]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [KbMatchFlag]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ExtraNum1]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ExtraNum2]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [RefNumFlag]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [OpenBaseBase]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((1)) FOR [VatFactor]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CloseTypeKab]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ConLogID]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DocCancel]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CloseTypeKabala]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [CustomerOrderNo]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DocCancelUsefID]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [DocCancelTime]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TftalDlr]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TftalVatDlr]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TftalVatFreeDlr]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [MasavConfirm]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [PrintTypeMailSend]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [AdtSum1]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [AdtSum2]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [AdtSum3]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [AdtNum1]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [AdtNum2]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [AdtNum3]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ConIssueNum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TaxApiNumberFlag]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TaxApiNumberNum]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [BaseCancelDocID]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [RoundingMeth]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [ReceiptDonation]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [TaxEmergencyNumUsed]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [MarketingNet]
GO
