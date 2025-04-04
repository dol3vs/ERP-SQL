USE [demo]
GO
/****** Object:  Table [dbo].[ExtraNotes]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KeF] [varchar](20) NULL,
	[Note] [varchar](250) NULL,
	[ItemFlag] [tinyint] NULL,
	[NoteID] [int] NULL,
	[Dumi] [tinyint] NULL,
 CONSTRAINT [PKNC_ExtraNotes_ID_675] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtraNotes] ADD  DEFAULT ((0)) FOR [ItemFlag]
GO
ALTER TABLE [dbo].[ExtraNotes] ADD  DEFAULT ((0)) FOR [NoteID]
GO
ALTER TABLE [dbo].[ExtraNotes] ADD  DEFAULT ((0)) FOR [Dumi]
GO
