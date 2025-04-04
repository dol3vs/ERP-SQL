USE [demo]
GO
/****** Object:  Table [dbo].[AgentWarehouseNames]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentWarehouseNames](
	[Sort] [smallint] NULL,
	[NameID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Remarks] [varchar](250) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameAccKey] [varchar](15) NULL,
	[Freelance] [tinyint] NULL,
	[Quota] [float] NULL,
	[BranchLogo] [varchar](20) NULL,
	[BranchPosLogo] [varchar](20) NULL,
	[PriceListID] [int] NULL,
	[IncAcc] [varchar](15) NULL,
	[IncFreeAcc] [varchar](15) NULL,
	[ExpAcc] [varchar](15) NULL,
	[Active] [int] NULL,
	[Flag] [int] NULL,
	[Flag1] [int] NULL,
	[Text] [varchar](250) NULL,
	[Text1] [varchar](250) NULL,
 CONSTRAINT [PKNC_AgentWarehouseNa_ID_46] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AgentWarehouseNames] ADD  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[AgentWarehouseNames] ADD  DEFAULT ((0)) FOR [NameID]
GO
ALTER TABLE [dbo].[AgentWarehouseNames] ADD  DEFAULT ((0)) FOR [Freelance]
GO
ALTER TABLE [dbo].[AgentWarehouseNames] ADD  DEFAULT ((0)) FOR [Quota]
GO
ALTER TABLE [dbo].[AgentWarehouseNames] ADD  DEFAULT ((0)) FOR [PriceListID]
GO
