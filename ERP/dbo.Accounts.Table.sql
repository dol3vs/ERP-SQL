USE [demo]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 01-Apr-25 12:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountKey] [varchar](15) NULL,
	[FullName] [varchar](50) NULL,
	[SortGroup] [int] NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](20) NULL,
	[Zip] [varchar](10) NULL,
	[Country] [varchar](20) NULL,
	[Phone] [varchar](30) NULL,
	[Fax] [varchar](30) NULL,
	[BalanceCode] [int] NULL,
	[Balance] [float] NULL,
	[CreditTermsCode] [int] NULL,
	[TFtalDiscount] [float] NULL,
	[VatExampt] [tinyint] NULL,
	[DiscountCode] [int] NULL,
	[Filter] [varchar](5) NULL,
	[WorF] [varchar](15) NULL,
	[Details] [varchar](250) NULL,
	[DatF1] [datetime] NULL,
	[DatF2] [datetime] NULL,
	[SuF1] [float] NULL,
	[SuF2] [float] NULL,
	[SuF3] [float] NULL,
	[SuF4] [float] NULL,
	[AvgLatePay] [smallint] NULL,
	[MaxCredit] [float] NULL,
	[MaxCreditCurrency] [varchar](5) NULL,
	[MaxObligo] [float] NULL,
	[MaxObligoCurrency] [varchar](5) NULL,
	[CustomerNote] [varchar](250) NULL,
	[AssignKey] [varchar](15) NULL,
	[Agent] [int] NULL,
	[DeductionPrc] [float] NULL,
	[DeductionValid] [datetime] NULL,
	[BankCode] [varchar](3) NULL,
	[BranchCode] [varchar](5) NULL,
	[BankAccount] [varchar](20) NULL,
	[TaxFileNum] [varchar](20) NULL,
	[Sales] [float] NULL,
	[SalesCurrency] [varchar](5) NULL,
	[Purchase] [float] NULL,
	[PurchaseCurrency] [varchar](5) NULL,
	[Obligo] [float] NULL,
	[SpecialItemBalance] [float] NULL,
	[MainAccount] [int] NULL,
	[FixedOrderCost] [float] NULL,
	[VisitPeriod] [int] NULL,
	[AverageSupplyPeriod] [float] NULL,
	[SDSupplyPeriod] [float] NULL,
	[Dumi] [tinyint] NULL,
	[BalanceName] [varchar](50) NULL,
	[MainAccountName] [varchar](50) NULL,
	[Protected] [tinyint] NULL,
	[CostCode] [varchar](8) NULL,
	[DifferAcc] [varchar](15) NULL,
	[MatchCurr] [varchar](5) NULL,
	[MatchCurrFlag] [tinyint] NULL,
	[EMail] [varchar](250) NULL,
	[Masav] [tinyint] NULL,
	[AccPass] [varchar](4) NULL,
	[Delivery] [float] NULL,
	[DeductFile] [varchar](20) NULL,
	[DocCurr] [varchar](5) NULL,
	[AccEDI] [varchar](15) NULL,
	[ExFile] [varchar](100) NULL,
	[varietyID] [int] NULL,
	[Pre] [varchar](15) NULL,
	[PreDate] [datetime] NULL,
	[AccCutFlag] [tinyint] NULL,
	[SbCardNo] [varchar](50) NULL,
	[SbMon] [varchar](2) NULL,
	[SbYear] [varchar](2) NULL,
	[SbID] [varchar](30) NULL,
	[Sb4digits] [varchar](30) NULL,
	[SbCvv] [varchar](60) NULL,
	[SbPhone] [varchar](20) NULL,
	[SbType] [varchar](50) NULL,
	[SbPays] [smallint] NULL,
	[SPhone] [varchar](30) NULL,
	[WebSite] [varchar](250) NULL,
	[TaxRepCode] [int] NULL,
	[PrtTo] [tinyint] NULL,
	[PointsQunt] [float] NULL,
	[RntSplitCode] [smallint] NULL,
	[RntQuant] [float] NULL,
	[DistLine] [int] NULL,
	[obligoDelivery] [float] NULL,
	[obligolaybuy] [float] NULL,
	[Distdoc] [smallint] NULL,
	[CustomerID1] [varchar](11) NULL,
	[CustomerID2] [varchar](11) NULL,
	[KupaPhone1] [varchar](11) NULL,
	[KupaPhone2] [varchar](11) NULL,
	[DeductValidFor] [tinyint] NULL,
	[MivzakFlag] [tinyint] NULL,
	[Computerized] [tinyint] NULL,
	[BDate] [datetime] NULL,
	[LetMasavMail] [tinyint] NULL,
	[RoundType] [tinyint] NULL,
	[BooksPermission] [tinyint] NULL,
	[DeductType] [tinyint] NULL,
	[PartnersType] [tinyint] NULL,
	[Name1000] [varchar](50) NULL,
	[ExPic] [varchar](100) NULL,
	[BankRecCurr] [varchar](5) NULL,
	[BankRecFlag] [tinyint] NULL,
	[MarketNetKey] [varchar](15) NULL,
	[MailReceipt] [tinyint] NULL,
	[MasavEmail] [varchar](250) NULL,
	[SbMasofID] [smallint] NULL,
	[SbstrToken] [varchar](50) NULL,
	[SbCreditSW] [smallint] NULL,
	[BUseFID] [int] NULL,
	[Voucher] [varchar](7) NULL,
	[VoucherValid] [datetime] NULL,
	[BlockAccProgFlag] [tinyint] NULL,
	[BlockAccDays] [smallint] NULL,
	[BlockAccSum] [float] NULL,
	[BlockJTransId] [int] NULL,
	[BlockTransDate] [datetime] NULL,
	[BlockTransOpenSum] [float] NULL,
	[HProtect] [int] NULL,
	[ExtDate1] [datetime] NULL,
	[ExtDate2] [datetime] NULL,
	[ExtText1] [varchar](250) NULL,
	[ExtText2] [varchar](250) NULL,
	[ExtFlag1] [tinyint] NULL,
	[ExtFlag2] [tinyint] NULL,
	[ExtFlag3] [tinyint] NULL,
	[ExtFlag4] [tinyint] NULL,
	[MailFormatID] [int] NULL,
	[ShipRicuzMail] [int] NULL,
	[MailFormatIDMasav] [int] NULL,
	[TaxFileNumEntity] [varchar](20) NULL,
	[BooksPermissionDate] [datetime] NULL,
	[TaxAllow] [int] NULL,
	[b2bflag] [int] NULL,
 CONSTRAINT [PKNC_Accounts_ID_11] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SortGroup]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BalanceCode]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [CreditTermsCode]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [TFtalDiscount]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [VatExampt]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [DiscountCode]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SuF1]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SuF2]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SuF3]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SuF4]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [AvgLatePay]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [MaxCredit]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [MaxObligo]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Agent]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [DeductionPrc]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Sales]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Purchase]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Obligo]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SpecialItemBalance]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [MainAccount]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [FixedOrderCost]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [VisitPeriod]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [AverageSupplyPeriod]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SDSupplyPeriod]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Dumi]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Protected]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [MatchCurrFlag]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Masav]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Delivery]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [varietyID]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [AccCutFlag]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SbPays]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [TaxRepCode]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [PrtTo]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [PointsQunt]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [RntSplitCode]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [RntQuant]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [DistLine]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [obligoDelivery]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [obligolaybuy]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Distdoc]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [DeductValidFor]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [MivzakFlag]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [Computerized]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [LetMasavMail]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((99)) FOR [RoundType]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((1)) FOR [BooksPermission]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [DeductType]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [PartnersType]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BankRecFlag]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [MailReceipt]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SbMasofID]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [SbCreditSW]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BlockAccProgFlag]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BlockAccDays]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BlockAccSum]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BlockJTransId]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [BlockTransOpenSum]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [ExtFlag1]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [ExtFlag2]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [ExtFlag3]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [ExtFlag4]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ((0)) FOR [TaxAllow]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [CK_ACCKEY_NOTNULL] CHECK  (([AccountKey] IS NOT NULL))
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [CK_ACCKEY_NOTNULL]
GO
