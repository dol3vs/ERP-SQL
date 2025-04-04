USE [Amodat712]
GO
/****** Object:  Table [dbo].[ProductAgentRel]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAgentRel](
	[AgentID] [dbo].[utAgentIDLong] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
 CONSTRAINT [PK_ProductAgentRel] PRIMARY KEY CLUSTERED 
(
	[AgentID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductAgentRel] ADD  CONSTRAINT [DF_ProductAgentRel_AgentID]  DEFAULT ('') FOR [AgentID]
GO
ALTER TABLE [dbo].[ProductAgentRel] ADD  CONSTRAINT [DF_ProductAgentRel_ProductID]  DEFAULT ('') FOR [ProductID]
GO
