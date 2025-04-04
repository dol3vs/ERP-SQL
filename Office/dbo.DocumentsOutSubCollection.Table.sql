USE [Amodat712]
GO
/****** Object:  Table [dbo].[DocumentsOutSubCollection]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsOutSubCollection](
	[AmodatDocTypeID] [int] NOT NULL,
	[DocNum] [dbo].[utDocumentIDLong] NOT NULL,
	[CollectionID] [dbo].[utCollectionID] NOT NULL,
	[Reference] [nvarchar](20) NOT NULL,
	[InvoiceTotal] [decimal](18, 2) NOT NULL,
	[ToPayDate] [datetime] NOT NULL,
	[ToPay] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ReceiptInvoices_1] PRIMARY KEY CLUSTERED 
(
	[AmodatDocTypeID] ASC,
	[DocNum] ASC,
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsOutSubCollection] ADD  CONSTRAINT [DF_DocumentsOutSubCollection_Reference]  DEFAULT ('') FOR [Reference]
GO
ALTER TABLE [dbo].[DocumentsOutSubCollection] ADD  CONSTRAINT [DF_ReceiptInvoices_Amount]  DEFAULT (0) FOR [InvoiceTotal]
GO
ALTER TABLE [dbo].[DocumentsOutSubCollection] ADD  CONSTRAINT [DF_DocumentsOutSubCollection_ToPayDate]  DEFAULT (0) FOR [ToPayDate]
GO
ALTER TABLE [dbo].[DocumentsOutSubCollection] ADD  CONSTRAINT [DF_DocumentsOutSubCollection_ToPay]  DEFAULT (0) FOR [ToPay]
GO
ALTER TABLE [dbo].[DocumentsOutSubCollection] ADD  CONSTRAINT [DF_DocumentsOutSubCollection_ToPay1]  DEFAULT (0) FOR [Amount]
GO
