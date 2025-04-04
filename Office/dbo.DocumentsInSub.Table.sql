USE [Amodat712]
GO
/****** Object:  Table [dbo].[DocumentsInSub]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsInSub](
	[AmodatDocTypeID] [int] NOT NULL,
	[DocumentID] [dbo].[utDocumentIDLong] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[LineNum] [int] NOT NULL,
	[SerialID] [dbo].[utSerialIDLong] NULL,
	[ProductName] [nvarchar](200) NULL,
	[PackQuantity] [int] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[QuantityBad] [decimal](18, 2) NULL,
	[QtySupplied] [decimal](18, 2) NULL,
	[Price] [decimal](19, 4) NULL,
	[Bonus] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Remark] [nvarchar](100) NULL,
	[Params] [int] NULL,
	[TotalRow] [decimal](18, 2) NULL,
	[VatPrecent] [decimal](9, 2) NULL,
	[VatAmount] [decimal](18, 2) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_DocumentsSub] PRIMARY KEY CLUSTERED 
(
	[AmodatDocTypeID] ASC,
	[DocumentID] ASC,
	[ProductID] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_ProductID]  DEFAULT ('') FOR [ProductID]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentsInSub_SerialID]  DEFAULT ('') FOR [SerialID]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_ProductName]  DEFAULT ('') FOR [ProductName]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_PackQuantity]  DEFAULT (0) FOR [PackQuantity]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Quantity]  DEFAULT (0) FOR [Quantity]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_QuantityBad]  DEFAULT (0) FOR [QuantityBad]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentsInSub_QtySupplied]  DEFAULT (0) FOR [QtySupplied]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Price]  DEFAULT (0) FOR [Price]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Bonus]  DEFAULT (0) FOR [Bonus]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Discount]  DEFAULT (0) FOR [Discount]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Params]  DEFAULT (0) FOR [Params]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_TotalRow]  DEFAULT (0) FOR [TotalRow]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentSub_Vat]  DEFAULT (0) FOR [VatPrecent]
GO
ALTER TABLE [dbo].[DocumentsInSub] ADD  CONSTRAINT [DF_DocumentsSub_VatAmount]  DEFAULT (0) FOR [VatAmount]
GO
