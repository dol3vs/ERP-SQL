USE [Amodat712]
GO
/****** Object:  Table [dbo].[DocumentsInMain]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsInMain](
	[AmodatDocTypeID] [int] NOT NULL,
	[DocumentID] [dbo].[utDocumentIDLong] NOT NULL,
	[TransactionAgentID] [dbo].[utAgentIDLong] NULL,
	[ClientID] [dbo].[utClientIDLong] NULL,
	[DocStatusID] [dbo].[utDocStatusIDLong] NULL,
	[Closed] [bit] NULL,
	[CloseProbability] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Remark] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[SupplyDate] [datetime] NULL,
	[TotalSum] [decimal](18, 2) NULL,
	[Discount] [decimal](9, 2) NULL,
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
 CONSTRAINT [PK_DocumentsMain] PRIMARY KEY CLUSTERED 
(
	[AmodatDocTypeID] ASC,
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_TransactionAgentID]  DEFAULT ('') FOR [TransactionAgentID]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_ClientID]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_Status]  DEFAULT ('') FOR [DocStatusID]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_Closed]  DEFAULT ((0)) FOR [Closed]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_CloseProbability]  DEFAULT ((0)) FOR [CloseProbability]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_Description]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsMain_CreateDate]  DEFAULT ((0)) FOR [CreateDate]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentMain_SupplyDate]  DEFAULT ((0)) FOR [SupplyDate]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsMain_TotalSum]  DEFAULT ((0)) FOR [TotalSum]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsMain_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_TextColor]  DEFAULT ('') FOR [TextColor]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_BackColor]  DEFAULT ('') FOR [BackColor]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_PDFLink]  DEFAULT ('') FOR [PDFLink]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_BOParams1]  DEFAULT ('') FOR [BOParams1]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_BOParams2]  DEFAULT ('') FOR [BOParams2]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_BOParams3]  DEFAULT ('') FOR [BOParams3]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_BOParams4]  DEFAULT ('') FOR [BOParams4]
GO
ALTER TABLE [dbo].[DocumentsInMain] ADD  CONSTRAINT [DF_DocumentsInMain_BOParams5]  DEFAULT ('') FOR [BOParams5]
GO
