USE [Amodat712]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[CollectionID] [dbo].[utCollectionID] NOT NULL,
	[ClientID] [dbo].[utClientIDLong] NULL,
	[Reference] [nvarchar](20) NULL,
	[Reference2] [nvarchar](20) NULL,
	[PurchaseDate] [datetime] NULL,
	[ToPayDate] [datetime] NULL,
	[InvoiceTotal] [decimal](18, 2) NULL,
	[ToPay] [decimal](18, 2) NULL,
	[DaysDelay] [int] NULL,
	[Params] [int] NULL,
	[Remark] [nvarchar](50) NULL,
	[TextColor] [dbo].[utColorName] NULL,
	[BackColor] [dbo].[utColorName] NULL,
	[PDFLink] [nvarchar](256) NULL,
	[BOParams1] [nvarchar](50) NULL,
	[BOParams2] [nvarchar](50) NULL,
	[BOParams3] [nvarchar](50) NULL,
	[BOParams4] [nvarchar](50) NULL,
	[BOParams5] [nvarchar](50) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_gvia] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_CustomerId]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_Reference]  DEFAULT ('') FOR [Reference]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_Reference2]  DEFAULT ('') FOR [Reference2]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_PurchaseDate]  DEFAULT ((0)) FOR [PurchaseDate]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_ToPayDate]  DEFAULT ((0)) FOR [ToPayDate]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_InvoiceTotal]  DEFAULT ((0)) FOR [InvoiceTotal]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_ToPay]  DEFAULT ((0)) FOR [ToPay]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_DaysDelay]  DEFAULT ((0)) FOR [DaysDelay]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_Params]  DEFAULT ((0)) FOR [Params]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_gvia_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_TextColorID]  DEFAULT ('') FOR [TextColor]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_Color]  DEFAULT ('') FOR [BackColor]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_PDFLink]  DEFAULT ('') FOR [PDFLink]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_BOParams1]  DEFAULT ('') FOR [BOParams1]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_BOParams2]  DEFAULT ('') FOR [BOParams2]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_BOParams3]  DEFAULT ('') FOR [BOParams3]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_BOParams4]  DEFAULT ('') FOR [BOParams4]
GO
ALTER TABLE [dbo].[Collection] ADD  CONSTRAINT [DF_Collection_BOParams5]  DEFAULT ('') FOR [BOParams5]
GO
