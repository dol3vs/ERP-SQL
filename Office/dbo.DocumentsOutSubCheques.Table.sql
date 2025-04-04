USE [Amodat712]
GO
/****** Object:  Table [dbo].[DocumentsOutSubCheques]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsOutSubCheques](
	[AmodatDocTypeID] [int] NOT NULL,
	[DocNum] [dbo].[utDocumentIDLong] NOT NULL,
	[LineNum] [int] NOT NULL,
	[Bank] [nvarchar](30) NOT NULL,
	[Branch] [nvarchar](30) NOT NULL,
	[AccountNum] [nvarchar](30) NOT NULL,
	[CheqNum] [nvarchar](30) NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[IsCheqDeposited] [bit] NOT NULL,
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[ClientName] [dbo].[utClientName] NOT NULL,
	[FrontAttachmentID] [dbo].[utAttachmentID] NOT NULL,
	[BackAttachmentID] [dbo].[utAttachmentID] NOT NULL,
	[RecordStatus] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_DocumentsOutSubCheques] PRIMARY KEY CLUSTERED 
(
	[AmodatDocTypeID] ASC,
	[DocNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_Bank]  DEFAULT ('') FOR [Bank]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_Branch]  DEFAULT ('') FOR [Branch]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_AccountNum]  DEFAULT ('') FOR [AccountNum]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_CheqNum]  DEFAULT ('') FOR [CheqNum]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_DueDate]  DEFAULT ((0)) FOR [DueDate]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_IsCheqDeposited]  DEFAULT ((0)) FOR [IsCheqDeposited]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_ClientID]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_ClientName]  DEFAULT ('') FOR [ClientName]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_FrontAttachmentID]  DEFAULT ('') FOR [FrontAttachmentID]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_BackAttachmentID]  DEFAULT ('') FOR [BackAttachmentID]
GO
ALTER TABLE [dbo].[DocumentsOutSubCheques] ADD  CONSTRAINT [DF_DocumentsOutSubCheques_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
