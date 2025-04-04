USE [demo]
GO
/****** Object:  Table [dbo].[ExtraSums]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraSums](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SuFID] [int] NULL,
	[KeF] [varchar](20) NULL,
	[SuF] [float] NULL,
	[ItemFlag] [tinyint] NULL,
	[Dumi] [tinyint] NULL,
 CONSTRAINT [PKNC_ExtraSums_ID_689] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtraSums] ADD  DEFAULT ((0)) FOR [SuFID]
GO
ALTER TABLE [dbo].[ExtraSums] ADD  DEFAULT ((0)) FOR [SuF]
GO
ALTER TABLE [dbo].[ExtraSums] ADD  DEFAULT ((0)) FOR [ItemFlag]
GO
ALTER TABLE [dbo].[ExtraSums] ADD  DEFAULT ((0)) FOR [Dumi]
GO
