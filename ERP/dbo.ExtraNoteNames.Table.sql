USE [demo]
GO
/****** Object:  Table [dbo].[ExtraNoteNames]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraNoteNames](
	[NoteName] [varchar](50) NULL,
	[ItemFlag] [tinyint] NULL,
	[NoteID] [int] IDENTITY(1,1) NOT NULL,
	[NumSort] [int] NULL,
 CONSTRAINT [PKNC_ExtraNoteNames_Not_671] PRIMARY KEY NONCLUSTERED 
(
	[NoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtraNoteNames] ADD  DEFAULT ((0)) FOR [ItemFlag]
GO
ALTER TABLE [dbo].[ExtraNoteNames] ADD  DEFAULT ((0)) FOR [NumSort]
GO
