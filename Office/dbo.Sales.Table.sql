USE [Amodat712]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SaleID] [dbo].[utSaleID] NOT NULL,
	[SaleDescription] [nvarchar](255) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[SaleType] [int] NOT NULL,
	[Params] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_SaleDescription]  DEFAULT ('') FOR [SaleDescription]
GO
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_SaleType]  DEFAULT ((1)) FOR [SaleType]
GO
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_Params]  DEFAULT ((0)) FOR [Params]
GO
