USE [Amodat712]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[City] [dbo].[utCity] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
