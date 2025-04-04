USE [demo]
GO
/****** Object:  Table [dbo].[DocumentsDef]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsDef](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[DocName] [varchar](50) NULL,
	[FixNumerator] [tinyint] NULL,
	[FirstNumber] [int] NULL,
	[CurrenFNumber] [int] NULL,
	[VatTransType] [varchar](5) NULL,
	[VatFreeTranType] [varchar](5) NULL,
	[UpdatFJurnal] [smallint] NULL,
	[LastDocDate] [datetime] NULL,
	[DisorderFlag] [tinyint] NULL,
	[StockUpdate] [smallint] NULL,
	[SalesDoc] [tinyint] NULL,
	[ForseenOrder] [smallint] NULL,
	[ExportDoc] [smallint] NULL,
	[BaseLinesOnly] [smallint] NULL,
	[HsDoc] [smallint] NULL,
	[UpdatFPurchPrice] [tinyint] NULL,
	[ProductDoc] [tinyint] NULL,
	[RptFormat] [int] NULL,
	[RptDocName] [varchar](50) NULL,
	[Copies] [int] NULL,
	[StockInOut] [tinyint] NULL,
	[RoundType] [tinyint] NULL,
	[RptFormat_KabN] [int] NULL,
 CONSTRAINT [PKNC_DocumentsDef_Doc_510] PRIMARY KEY NONCLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [FixNumerator]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [FirstNumber]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [CurrenFNumber]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [UpdatFJurnal]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [DisorderFlag]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [StockUpdate]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [SalesDoc]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [ForseenOrder]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [ExportDoc]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [BaseLinesOnly]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [HsDoc]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [UpdatFPurchPrice]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [ProductDoc]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [RptFormat]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [Copies]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [StockInOut]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((99)) FOR [RoundType]
GO
ALTER TABLE [dbo].[DocumentsDef] ADD  DEFAULT ((0)) FOR [RptFormat_KabN]
GO
