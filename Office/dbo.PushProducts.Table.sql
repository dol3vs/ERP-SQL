USE [Amodat712]
GO
/****** Object:  Table [dbo].[PushProducts]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PushProducts](
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[Comments] [nvarchar](1024) NOT NULL,
	[Params] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_PushProducts] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PushProducts] ADD  CONSTRAINT [DF_PushProducts_Comments]  DEFAULT ('') FOR [Comments]
GO
ALTER TABLE [dbo].[PushProducts] ADD  CONSTRAINT [DF_PushProducts_Params]  DEFAULT ((0)) FOR [Params]
GO
