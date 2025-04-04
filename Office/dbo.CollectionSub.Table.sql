USE [Amodat712]
GO
/****** Object:  Table [dbo].[CollectionSub]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionSub](
	[CollectionID] [dbo].[utCollectionID] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Discount] [decimal](9, 2) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_CollectionSub] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC,
	[LineNum] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_gviaDetails_GviaID]  DEFAULT ('') FOR [CollectionID]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_CollectionSub_LineNum]  DEFAULT (0) FOR [LineNum]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_gviaDetails_ProductID]  DEFAULT ('') FOR [ProductID]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_gviaDetails_ItemName_1]  DEFAULT ('') FOR [ProductName]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_gviaDetails_Quantity]  DEFAULT (0) FOR [Quantity]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_gviaDetails_Price]  DEFAULT (0) FOR [Price]
GO
ALTER TABLE [dbo].[CollectionSub] ADD  CONSTRAINT [DF_gviaDetails_Discount]  DEFAULT (0) FOR [Discount]
GO
