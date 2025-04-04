USE [demo]
GO
/****** Object:  Table [dbo].[JurnalTransMoves]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JurnalTransMoves](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransID] [int] NULL,
	[AccountKey] [varchar](15) NULL,
	[DebitCredit] [tinyint] NULL,
	[SuF] [float] NULL,
	[SuFDlr] [float] NULL,
	[IsFrayer] [tinyint] NULL,
	[PercenF] [float] NULL,
	[FullMatch] [tinyint] NULL,
	[SourceMoveID] [int] NULL,
 CONSTRAINT [PKNC_JurnalTransMoves_ID_1124] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [TransID]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [DebitCredit]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [SuF]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [SuFDlr]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [IsFrayer]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [PercenF]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [FullMatch]
GO
ALTER TABLE [dbo].[JurnalTransMoves] ADD  DEFAULT ((0)) FOR [SourceMoveID]
GO
