USE [Amodat712]
GO
/****** Object:  Table [dbo].[SalesPerAgent]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerAgent](
	[AgentID] [dbo].[utAgentIDLong] NOT NULL,
	[SortDate] [nvarchar](10) NOT NULL,
	[Month] [nvarchar](50) NULL,
	[Total] [decimal](18, 2) NULL,
	[TotalPrevYear] [decimal](18, 2) NULL,
	[ChangePercent] [decimal](9, 2) NULL,
	[SalesTarget] [decimal](18, 2) NULL,
	[ActivitiesTarget] [int] NULL,
	[ActivitiesTotal] [int] NULL,
	[ActivitiesChangePercent] [decimal](9, 2) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_SalesPerAgent] PRIMARY KEY CLUSTERED 
(
	[AgentID] ASC,
	[SortDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_SortDate]  DEFAULT ('') FOR [SortDate]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_Month]  DEFAULT ('') FOR [Month]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_Total]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_TotalPrevYear]  DEFAULT ((0)) FOR [TotalPrevYear]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_StatPercent]  DEFAULT ((0)) FOR [ChangePercent]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_SalesTarget]  DEFAULT ((0)) FOR [SalesTarget]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_ActivitiesTarget]  DEFAULT ((0)) FOR [ActivitiesTarget]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_ActivitiesTotal]  DEFAULT ((0)) FOR [ActivitiesTotal]
GO
ALTER TABLE [dbo].[SalesPerAgent] ADD  CONSTRAINT [DF_SalesPerAgent_ActivitiesChangePercent]  DEFAULT ((0)) FOR [ActivitiesChangePercent]
GO
