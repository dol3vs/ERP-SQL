USE [demo]
GO
/****** Object:  Table [dbo].[ExtraDateNames]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraDateNames](
	[DatFID] [int] IDENTITY(1,1) NOT NULL,
	[DatFName] [varchar](50) NULL,
	[ItemFlag] [tinyint] NULL,
	[NumSort] [int] NULL,
 CONSTRAINT [PKNC_ExtraDateNames_Dat_657] PRIMARY KEY NONCLUSTERED 
(
	[DatFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtraDateNames] ADD  DEFAULT ((0)) FOR [ItemFlag]
GO
ALTER TABLE [dbo].[ExtraDateNames] ADD  DEFAULT ((0)) FOR [NumSort]
GO
