USE [demo]
GO
/****** Object:  Table [dbo].[ClientOrderSummary]    Script Date: 07-Apr-25 1:19:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientOrderSummary](
	[ClientID] [int] NOT NULL,
	[TotalOrders] [int] NULL,
	[TotalSpent] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
