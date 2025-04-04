USE [Amodat712]
GO
/****** Object:  Table [dbo].[ClientStatus]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientStatus](
	[ClientStatusID] [dbo].[utClientStatusID] NOT NULL,
	[ClientStatus] [nvarchar](30) NOT NULL,
	[ClientStatusColor] [nvarchar](50) NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ClientStatus] PRIMARY KEY CLUSTERED 
(
	[ClientStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientStatus] ADD  CONSTRAINT [DF_ClientStatus_ClientStatusID]  DEFAULT ((0)) FOR [ClientStatusID]
GO
ALTER TABLE [dbo].[ClientStatus] ADD  CONSTRAINT [DF_ClientStatus_ClientStatus]  DEFAULT ('') FOR [ClientStatus]
GO
ALTER TABLE [dbo].[ClientStatus] ADD  CONSTRAINT [DF_ClientStatus_ClientStatusColor]  DEFAULT ('') FOR [ClientStatusColor]
GO
