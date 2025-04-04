USE [demo]
GO
/****** Object:  Table [dbo].[PriceLists]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceLists](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemKey] [varchar](20) NULL,
	[Price] [float] NULL,
	[CurrencyCode] [varchar](5) NULL,
	[PriceListNumber] [int] NULL,
	[DatF] [datetime] NULL,
	[DFlag] [tinyint] NULL,
	[UseFID] [int] NULL,
	[CngDate] [datetime] NULL,
 CONSTRAINT [PKNC_PriceLists_ID_1504] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PriceLists] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[PriceLists] ADD  DEFAULT ((0)) FOR [PriceListNumber]
GO
ALTER TABLE [dbo].[PriceLists] ADD  DEFAULT ((0)) FOR [DFlag]
GO
ALTER TABLE [dbo].[PriceLists] ADD  DEFAULT ((0)) FOR [UseFID]
GO
