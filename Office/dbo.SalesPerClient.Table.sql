USE [Amodat712]
GO
/****** Object:  Table [dbo].[SalesPerClient]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerClient](
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[SortDate] [nvarchar](10) NOT NULL,
	[Month] [nvarchar](50) NULL,
	[Total] [decimal](18, 2) NULL,
	[TotalPrevYear] [decimal](18, 2) NULL,
	[ChangePercent] [decimal](9, 2) NULL,
	[SalesTarget] [decimal](18, 2) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ClientStat] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[SortDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_ClientStat_ClientID]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_ClientStat_SortDate]  DEFAULT ('') FOR [SortDate]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_ClientStat_Month]  DEFAULT ('') FOR [Month]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_ClientStat_Total]  DEFAULT (0) FOR [Total]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_SalesPerClient_TotalPrevYear]  DEFAULT (0) FOR [TotalPrevYear]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_ClientStat_StatPercent]  DEFAULT (0) FOR [ChangePercent]
GO
ALTER TABLE [dbo].[SalesPerClient] ADD  CONSTRAINT [DF_ClientStat_SalesTarget]  DEFAULT (0) FOR [SalesTarget]
GO
