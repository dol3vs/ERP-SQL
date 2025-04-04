USE [demo]
GO
/****** Object:  Table [dbo].[SpecialPrices]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialPrices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Detailes] [varchar](50) NULL,
	[ItemKey] [varchar](20) NULL,
	[AccountKey] [varchar](15) NULL,
	[Price] [float] NULL,
	[CurrencyCode] [varchar](5) NULL,
	[MinQuantity] [float] NULL,
	[PackQuantity] [float] NULL,
	[ValidDate] [datetime] NULL,
	[Active] [tinyint] NULL,
	[SourceID] [int] NULL,
	[EndDate] [datetime] NULL,
	[MinDebit] [tinyint] NULL,
	[MinDebitQuant] [float] NULL,
	[MinDebitItem] [varchar](20) NULL,
	[MinDebitQuantBy] [float] NULL,
	[CalcMethod] [tinyint] NULL,
	[PrintMethod] [tinyint] NULL,
	[ItemDesc] [varchar](100) NULL,
	[MinAmount] [float] NULL,
	[UseFID] [int] NULL,
	[ChangeDate] [datetime] NULL,
	[ChangeTime] [int] NULL,
	[Remarks] [varchar](100) NULL,
 CONSTRAINT [PKNC_SpecialPrices_ID_1842] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [MinQuantity]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [PackQuantity]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [SourceID]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [MinDebit]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((1)) FOR [MinDebitQuant]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((1)) FOR [MinDebitQuantBy]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [CalcMethod]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [PrintMethod]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [MinAmount]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [UseFID]
GO
ALTER TABLE [dbo].[SpecialPrices] ADD  DEFAULT ((0)) FOR [ChangeTime]
GO
