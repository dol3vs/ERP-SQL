USE [Amodat712]
GO
/****** Object:  Table [dbo].[ProductsHistory]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsHistory](
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[Reference] [dbo].[utDocumentIDLong] NOT NULL,
	[ReferenceDate] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[BOParams1] [nvarchar](50) NULL,
	[BOParams2] [nvarchar](50) NULL,
	[BOParams3] [nvarchar](50) NULL,
	[BOParams4] [nvarchar](50) NULL,
	[BOParams5] [nvarchar](50) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ProductsHistory] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[ProductID] ASC,
	[Reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_Price]  DEFAULT (0) FOR [Price]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_Discount]  DEFAULT (0) FOR [Discount]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_Quantity]  DEFAULT (0) FOR [Quantity]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_BOParams1]  DEFAULT ('') FOR [BOParams1]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_BOParams2]  DEFAULT ('') FOR [BOParams2]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_BOParams3]  DEFAULT ('') FOR [BOParams3]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_BOParams4]  DEFAULT ('') FOR [BOParams4]
GO
ALTER TABLE [dbo].[ProductsHistory] ADD  CONSTRAINT [DF_ProductsHistory_BOParams5]  DEFAULT ('') FOR [BOParams5]
GO
