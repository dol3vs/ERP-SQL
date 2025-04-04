USE [Amodat712]
GO
/****** Object:  Table [dbo].[ClientAgentRel]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientAgentRel](
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[AgentID] [dbo].[utAgentIDLong] NOT NULL,
	[RelationType] [int] NULL,
	[Params] [int] NULL,
 CONSTRAINT [PK_ClientAgentRel] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[AgentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientAgentRel] ADD  CONSTRAINT [DF_ClientAgentRel_ConnectionType]  DEFAULT (0) FOR [RelationType]
GO
ALTER TABLE [dbo].[ClientAgentRel] ADD  CONSTRAINT [DF_ClientAgentRel_Params]  DEFAULT (0) FOR [Params]
GO
