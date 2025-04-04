USE [demo]
GO
/****** Object:  Table [dbo].[JurnalTrans]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JurnalTrans](
	[TransID] [int] IDENTITY(1,1) NOT NULL,
	[TransDebID] [varchar](15) NULL,
	[TransCredID] [varchar](15) NULL,
	[DebName] [varchar](50) NULL,
	[CredName] [varchar](50) NULL,
	[BatchNo] [int] NULL,
	[Description] [varchar](250) NULL,
	[Referance] [int] NULL,
	[Ref2] [int] NULL,
	[TransType] [varchar](5) NULL,
	[CurrencyCode] [varchar](5) NULL,
	[ValueDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Status] [tinyint] NULL,
	[Changable] [tinyint] NULL,
	[StockID] [int] NULL,
	[CostCode] [varchar](8) NULL,
	[Differ] [smallint] NULL,
	[CreditTermShare] [float] NULL,
	[suF] [float] NULL,
	[suFDlr] [float] NULL,
	[BachNo] [smallint] NULL,
	[LockingIs] [tinyint] NULL,
	[Type] [tinyint] NULL,
	[Ref3] [int] NULL,
	[DatF3] [datetime] NULL,
	[UseFID] [int] NULL,
	[Quant] [float] NULL,
	[PaymentID] [int] NULL,
	[CKID] [int] NULL,
	[FixedID] [int] NULL,
	[TemCopy] [int] NULL,
	[JurnalMatchID] [int] NULL,
	[FixDate] [datetime] NULL,
	[Branch] [int] NULL,
	[VATTEMPID] [float] NULL,
	[PaymentIDTbl] [tinyint] NULL,
	[Details] [varchar](50) NULL,
	[Det2] [varchar](50) NULL,
	[ExFile] [varchar](100) NULL,
	[IssueDate] [datetime] NULL,
	[KupaNum] [int] NULL,
	[Osek874] [varchar](9) NULL,
	[RefNum] [int] NULL,
	[MoveNum] [int] NULL,
	[IssueFlag874] [tinyint] NULL,
	[ChkSum] [float] NULL,
	[FaultTrans] [tinyint] NULL,
	[CostHeaderId] [int] NULL,
	[BDate] [datetime] NULL,
	[Hour] [int] NULL,
	[LoanID] [int] NULL,
	[LossID] [int] NULL,
	[ExtraNum1] [int] NULL,
	[ExtraNum2] [int] NULL,
	[ExtraDate1] [datetime] NULL,
	[ExtraDate2] [datetime] NULL,
	[DocumentID] [int] NULL,
	[StationID] [varchar](30) NULL,
	[TaxApiNumber] [varchar](250) NULL,
 CONSTRAINT [PKNC_JurnalTrans_Tra_1104] PRIMARY KEY NONCLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [BatchNo]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Ref2]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Changable]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [StockID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Differ]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [CreditTermShare]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [suF]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [suFDlr]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [BachNo]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [LockingIs]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Ref3]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [UseFID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Quant]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [PaymentID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [CKID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [FixedID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [TemCopy]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [JurnalMatchID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Branch]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [VATTEMPID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [PaymentIDTbl]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [KupaNum]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [RefNum]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((9999999)) FOR [MoveNum]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [IssueFlag874]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [ChkSum]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [FaultTrans]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [CostHeaderId]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [Hour]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [LoanID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [LossID]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [ExtraNum1]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [ExtraNum2]
GO
ALTER TABLE [dbo].[JurnalTrans] ADD  DEFAULT ((0)) FOR [DocumentID]
GO
