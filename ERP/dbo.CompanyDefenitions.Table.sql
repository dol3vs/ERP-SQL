USE [demo]
GO
/****** Object:  Table [dbo].[CompanyDefenitions]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyDefenitions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](80) NULL,
	[ShortName] [varchar](50) NULL,
	[LastBach] [int] NULL,
	[AccKeyType] [int] NULL,
	[ItemKeyType] [int] NULL,
	[MainCurrency] [varchar](5) NULL,
	[EvalCurrency] [varchar](5) NULL,
	[VatPrc] [float] NULL,
	[TaxPrc] [float] NULL,
	[SaleTaxPrc] [float] NULL,
	[AdvancePrc] [float] NULL,
	[Deduction] [tinyint] NULL,
	[VatNum] [varchar](20) NULL,
	[DeductNum] [varchar](20) NULL,
	[TaxYearLow] [datetime] NULL,
	[TaxYearHigh] [datetime] NULL,
	[DueDatelow] [datetime] NULL,
	[DueDateHigh] [datetime] NULL,
	[HiddenAccountsFilter] [varchar](5) NULL,
	[ActMoves] [int] NULL,
	[Modules] [int] NULL,
	[RoundType] [int] NULL,
	[CashAcc] [varchar](15) NULL,
	[cheqAcc] [varchar](15) NULL,
	[DeductAcc] [varchar](15) NULL,
	[BalanceAcc] [varchar](15) NULL,
	[BudgetTransTypeFilter] [varchar](5) NULL,
	[MinCreditSum] [float] NULL,
	[MinCredPaySum] [float] NULL,
	[SuFForBalance] [float] NULL,
	[RecepitMatchNum] [int] NULL,
	[AccKeyLength] [smallint] NULL,
	[ItemKeyLength] [smallint] NULL,
	[DifferAcc] [varchar](15) NULL,
	[DifferFrgnAcc] [varchar](15) NULL,
	[AutoDifferFlag] [tinyint] NULL,
	[BankCommAcc] [varchar](15) NULL,
	[ExchangeAcc] [varchar](15) NULL,
	[badCheqAcc] [varchar](15) NULL,
	[BadCheqCntAcc] [varchar](15) NULL,
	[CashDlrAcc] [varchar](15) NULL,
	[cheqDlrAcc] [varchar](15) NULL,
	[OpenAcc] [tinyint] NULL,
	[DocDiscount] [tinyint] NULL,
	[CompForignName] [varchar](80) NULL,
	[CompanyAddress] [varchar](80) NULL,
	[CompForignAddress] [varchar](80) NULL,
	[CalculateObligo] [tinyint] NULL,
	[ObligoDelivery] [tinyint] NULL,
	[ObligoAccFrom] [varchar](15) NULL,
	[ObligoAccTo] [varchar](15) NULL,
	[ObligoAccSortFrom] [int] NULL,
	[ObligoAccSortTo] [int] NULL,
	[ObligoAccFilter] [varchar](5) NULL,
	[CheqCashDays] [int] NULL,
	[ObligoLastDate] [datetime] NULL,
	[ObligoMainAcctID] [int] NULL,
	[CreditAlarm] [tinyint] NULL,
	[ObligoAlarm] [tinyint] NULL,
	[BalanceAlarm] [tinyint] NULL,
	[PriceAlarm] [tinyint] NULL,
	[PriceListAlarmID] [int] NULL,
	[ItemForImport] [varchar](20) NULL,
	[AlarmSortFrom] [int] NULL,
	[AlarmSortTo] [int] NULL,
	[AlarmFilter] [varchar](10) NULL,
	[Sba] [tinyint] NULL,
	[FCBall] [tinyint] NULL,
	[IntItem] [varchar](20) NULL,
	[LinItem] [varchar](20) NULL,
	[IssueJurnalImport] [int] NULL,
	[CompLogo] [varchar](12) NULL,
	[CompForignLogo] [varchar](12) NULL,
	[MaxFactor] [int] NULL,
	[SbaClubs] [tinyint] NULL,
	[PurchBudget] [tinyint] NULL,
	[SaleBudget] [tinyint] NULL,
	[LossNum] [varchar](20) NULL,
	[Closer] [tinyint] NULL,
	[CloserDate] [datetime] NULL,
	[CloserTransID] [int] NULL,
	[CheqDetailes] [tinyint] NULL,
	[TypeBRec] [tinyint] NULL,
	[TypeCRec] [tinyint] NULL,
	[InvAcc] [varchar](15) NULL,
	[CloserOdef] [varchar](15) NULL,
	[CloserFlag] [tinyint] NULL,
	[CheqDiduct] [float] NULL,
	[CloseWarnFlag] [tinyint] NULL,
	[CloseDaysWarn] [int] NULL,
	[CloseNextDate] [datetime] NULL,
	[CloseLastUpdt] [datetime] NULL,
	[CompanyNum] [varchar](10) NULL,
	[DiscItem] [varchar](20) NULL,
	[FMSha] [varchar](20) NULL,
	[FMOut] [varchar](20) NULL,
	[ObligoKAccFrom] [varchar](15) NULL,
	[ObligoKAccTo] [varchar](15) NULL,
	[ObligoKAccSortFrom] [int] NULL,
	[ObligoKAccSortTo] [int] NULL,
	[ObligoKAccFilter] [varchar](5) NULL,
	[WhDft] [tinyint] NULL,
	[MergVatNum] [varchar](20) NULL,
	[CInvVatItem] [varchar](20) NULL,
	[CInvVatFreeItem] [varchar](20) NULL,
	[SbaDealType] [tinyint] NULL,
	[KabInvRecNum] [int] NULL,
	[DftBranch] [int] NULL,
	[MatrixDef] [tinyint] NULL,
	[PrSpecialItems] [tinyint] NULL,
	[AutoSplit] [tinyint] NULL,
	[cheqPikAcc] [varchar](15) NULL,
	[InvIncome] [varchar](5) NULL,
	[InvExpVat] [varchar](5) NULL,
	[InvExpVatFree] [varchar](5) NULL,
	[GiftAcc] [varchar](15) NULL,
	[KillInst] [tinyint] NULL,
	[KupaAcc] [varchar](15) NULL,
	[ConItem] [varchar](20) NULL,
	[BarCode] [tinyint] NULL,
	[CHKPrintPhone] [tinyint] NULL,
	[CHKMotav] [tinyint] NULL,
	[FMShortPrint] [tinyint] NULL,
	[FMNoPayZero] [tinyint] NULL,
	[FMWarrInv] [tinyint] NULL,
	[JTSba] [tinyint] NULL,
	[BarQ] [tinyint] NULL,
	[PrntKabDt] [tinyint] NULL,
	[UpdtRatesFlag] [tinyint] NULL,
	[ProdRepFormat] [tinyint] NULL,
	[BatchAuto] [tinyint] NULL,
	[EmptyBatch] [tinyint] NULL,
	[LastReceiptBak] [datetime] NULL,
	[BakFlag] [tinyint] NULL,
	[VatPerItem] [tinyint] NULL,
	[BranchPays] [tinyint] NULL,
	[SbaRvSpk] [tinyint] NULL,
	[EMail] [varchar](50) NULL,
	[WebSite] [varchar](250) NULL,
	[PrMatQunt] [tinyint] NULL,
	[PrDiscPrc] [tinyint] NULL,
	[PrItemDisc] [tinyint] NULL,
	[PrSvaFormat] [tinyint] NULL,
	[PrMatachFormat] [tinyint] NULL,
	[PrMatachIsSum] [tinyint] NULL,
	[ExtDatelow] [datetime] NULL,
	[ExtDateHigh] [datetime] NULL,
	[KabInvFlag] [tinyint] NULL,
	[AccSearch] [tinyint] NULL,
	[ItemSearch] [tinyint] NULL,
	[KabSplitCredits] [tinyint] NULL,
	[AccSearchA] [tinyint] NULL,
	[ItemSearchA] [tinyint] NULL,
	[SalesDiscItem] [varchar](20) NULL,
	[RntItm] [varchar](15) NULL,
	[JoinJurnal] [tinyint] NULL,
	[ISSUEMIV] [tinyint] NULL,
	[SalesDiscItemVatFree] [varchar](20) NULL,
	[Kab46] [tinyint] NULL,
	[ActLossDate] [datetime] NULL,
	[IncLossDate] [datetime] NULL,
	[CancelBaseQnt] [tinyint] NULL,
	[Sstatus] [tinyint] NULL,
	[DocRecs] [tinyint] NULL,
	[MivOK] [tinyint] NULL,
	[ChngItem] [varchar](20) NULL,
	[GiftItem] [varchar](20) NULL,
	[GPAlarm] [tinyint] NULL,
	[GPDateAlarm] [tinyint] NULL,
	[GiftPaySort] [tinyint] NULL,
	[AlterBarcodeAcc] [varchar](15) NULL,
	[TaxRepresentative] [varchar](10) NULL,
	[TaxFileInitials] [varchar](10) NULL,
	[CheqCompName] [varchar](50) NULL,
	[CashSumForID] [float] NULL,
	[UpLineNum] [tinyint] NULL,
	[BarQDoc] [tinyint] NULL,
	[DocPrntSort] [tinyint] NULL,
	[CompPosLogo] [varchar](20) NULL,
	[BalanceAlarmW] [tinyint] NULL,
	[StockPerUnitW] [int] NULL,
	[UpdTreeDet] [tinyint] NULL,
	[SeAccActiv] [tinyint] NULL,
	[SeItemActiv] [tinyint] NULL,
	[MikdamotReporter] [varchar](20) NULL,
	[CPtypedft] [varchar](50) NULL,
	[CPpnumdft] [smallint] NULL,
	[ConDelZero] [tinyint] NULL,
	[AccHistory] [tinyint] NULL,
	[ItemHistory] [tinyint] NULL,
	[Lc_Print] [tinyint] NULL,
	[Lc_RunLc] [tinyint] NULL,
	[PrAllLevef] [tinyint] NULL,
	[PrEnough] [tinyint] NULL,
	[AccBm] [tinyint] NULL,
	[ItmBm] [tinyint] NULL,
	[BlockOrders] [tinyint] NULL,
	[CompPosForignLogo] [varchar](20) NULL,
	[KabTrumaHed] [tinyint] NULL,
	[AccUpdate] [tinyint] NULL,
	[ItemUpdate] [tinyint] NULL,
	[AccSearchB] [tinyint] NULL,
	[ItemSearchB] [tinyint] NULL,
	[ObligoOrder] [tinyint] NULL,
	[AccCardFlag] [tinyint] NULL,
	[Min874] [float] NULL,
	[Min874Valid] [datetime] NULL,
	[Min874Type] [tinyint] NULL,
	[Min874SCPart] [float] NULL,
	[Min874SCValid] [datetime] NULL,
	[RefNumFrom] [int] NULL,
	[RefNumTo] [int] NULL,
	[RefNumCurrent] [int] NULL,
	[Min874SCSum] [float] NULL,
	[NoAccUpd] [tinyint] NULL,
	[ZRef874] [tinyint] NULL,
	[MinTK874] [float] NULL,
	[CloserOdefIfrs] [varchar](15) NULL,
	[OrgSort] [tinyint] NULL,
	[CostSearchB] [tinyint] NULL,
	[TTSearchB] [tinyint] NULL,
	[CostSearch] [tinyint] NULL,
	[TTSearch] [tinyint] NULL,
	[UssSort] [tinyint] NULL,
	[DefType874] [tinyint] NULL,
	[PrntBatch] [tinyint] NULL,
	[DigSignFile] [varchar](250) NULL,
	[CheqsNoBooks] [tinyint] NULL,
	[RepriceFlag] [tinyint] NULL,
	[FMRefixDays] [int] NULL,
	[TsuFilter874] [tinyint] NULL,
	[PrintTiuta] [tinyint] NULL,
	[CretBarCode] [tinyint] NULL,
	[DftShortJurnal] [tinyint] NULL,
	[ImportVatAcc] [varchar](15) NULL,
	[ChkMugbal] [tinyint] NULL,
	[Last4dig2Ref] [tinyint] NULL,
	[DetCashInv] [tinyint] NULL,
	[StatsOn] [tinyint] NULL,
	[StatsUp] [tinyint] NULL,
	[CreditCardSW] [tinyint] NULL,
	[SWPrint4LastDig] [tinyint] NULL,
	[OnePdf] [tinyint] NULL,
	[AutoUpRates] [tinyint] NULL,
	[SupChkDate] [tinyint] NULL,
	[SupChkAuto] [tinyint] NULL,
	[DDdetailsFlag] [tinyint] NULL,
	[DDdetailsText] [varchar](250) NULL,
	[Sba_Emv] [tinyint] NULL,
	[PrintSign] [tinyint] NULL,
	[ChangeAccPrice] [tinyint] NULL,
 CONSTRAINT [PKNC_CompanyDefenitio_ID_268] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [LastBach]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccKeyType]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItemKeyType]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [VatPrc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [TaxPrc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SaleTaxPrc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AdvancePrc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Deduction]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ActMoves]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Modules]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [RoundType]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [MinCreditSum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [MinCredPaySum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SuFForBalance]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [RecepitMatchNum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AutoDifferFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [OpenAcc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DocDiscount]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CalculateObligo]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoDelivery]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoAccSortFrom]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoAccSortTo]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CheqCashDays]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoMainAcctID]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CreditAlarm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoAlarm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BalanceAlarm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PriceAlarm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PriceListAlarmID]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AlarmSortFrom]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AlarmSortTo]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Sba]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [FCBall]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [IssueJurnalImport]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [MaxFactor]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SbaClubs]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PurchBudget]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SaleBudget]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Closer]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CloserTransID]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CheqDetailes]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [TypeBRec]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [TypeCRec]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CloserFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CheqDiduct]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CloseWarnFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((30)) FOR [CloseDaysWarn]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoKAccSortFrom]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoKAccSortTo]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((1)) FOR [WhDft]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SbaDealType]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [KabInvRecNum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DftBranch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [MatrixDef]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrSpecialItems]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AutoSplit]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [KillInst]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BarCode]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CHKPrintPhone]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CHKMotav]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [FMShortPrint]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [FMNoPayZero]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [FMWarrInv]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [JTSba]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BarQ]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrntKabDt]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [UpdtRatesFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ProdRepFormat]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BatchAuto]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [EmptyBatch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BakFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [VatPerItem]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BranchPays]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SbaRvSpk]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrMatQunt]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrDiscPrc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrItemDisc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrSvaFormat]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrMatachFormat]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrMatachIsSum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [KabInvFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccSearch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItemSearch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [KabSplitCredits]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccSearchA]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItemSearchA]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((1)) FOR [JoinJurnal]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ISSUEMIV]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Kab46]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CancelBaseQnt]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Sstatus]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DocRecs]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [MivOK]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [GPAlarm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [GPDateAlarm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [GiftPaySort]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CashSumForID]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [UpLineNum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BarQDoc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DocPrntSort]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BalanceAlarmW]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [StockPerUnitW]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [UpdTreeDet]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SeAccActiv]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SeItemActiv]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CPpnumdft]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ConDelZero]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccHistory]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItemHistory]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Lc_Print]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Lc_RunLc]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrAllLevef]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrEnough]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccBm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItmBm]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [BlockOrders]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [KabTrumaHed]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccUpdate]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItemUpdate]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccSearchB]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ItemSearchB]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ObligoOrder]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AccCardFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Min874]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Min874Type]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Min874SCPart]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [RefNumFrom]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [RefNumTo]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [RefNumCurrent]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Min874SCSum]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [NoAccUpd]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ZRef874]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [MinTK874]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [OrgSort]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CostSearchB]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [TTSearchB]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CostSearch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [TTSearch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [UssSort]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((1)) FOR [DefType874]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((1)) FOR [PrntBatch]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CheqsNoBooks]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((1)) FOR [RepriceFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((999)) FOR [FMRefixDays]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [TsuFilter874]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrintTiuta]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CretBarCode]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DftShortJurnal]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ChkMugbal]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Last4dig2Ref]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DetCashInv]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [StatsOn]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [StatsUp]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [CreditCardSW]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SWPrint4LastDig]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [OnePdf]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [AutoUpRates]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SupChkDate]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [SupChkAuto]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [DDdetailsFlag]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [Sba_Emv]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [PrintSign]
GO
ALTER TABLE [dbo].[CompanyDefenitions] ADD  DEFAULT ((0)) FOR [ChangeAccPrice]
GO
