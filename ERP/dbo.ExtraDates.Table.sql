USE [demo]
GO
/****** Object:  Table [dbo].[ExtraDates]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraDates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DatFID] [int] NULL,
	[KeF] [varchar](20) NULL,
	[DatF] [datetime] NULL,
	[ItemFlag] [tinyint] NULL,
	[Dumi] [tinyint] NULL,
 CONSTRAINT [PKNC_ExtraDates_ID_662] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtraDates] ADD  DEFAULT ((0)) FOR [DatFID]
GO
ALTER TABLE [dbo].[ExtraDates] ADD  DEFAULT ((0)) FOR [ItemFlag]
GO
ALTER TABLE [dbo].[ExtraDates] ADD  DEFAULT ((0)) FOR [Dumi]
GO
