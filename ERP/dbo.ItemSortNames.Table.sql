USE [demo]
GO
/****** Object:  Table [dbo].[ItemSortNames]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemSortNames](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemSortCode] [int] NOT NULL,
	[SortCodeName] [varchar](50) NULL,
 CONSTRAINT [PKNC_ItemSortNames_Ite_1091] PRIMARY KEY NONCLUSTERED 
(
	[ItemSortCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
