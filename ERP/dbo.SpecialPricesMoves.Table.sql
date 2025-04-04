USE [demo]
GO
/****** Object:  Table [dbo].[SpecialPricesMoves]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialPricesMoves](
	[Price] [float] NULL,
	[CurrencyCode] [varchar](5) NULL,
	[MinQuantity] [float] NULL,
	[PackQuantity] [float] NULL,
	[Active] [tinyint] NULL,
	[SPID] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountPrc] [float] NULL,
	[ItemKey] [varchar](20) NULL,
	[ItemName] [varchar](100) NULL,
 CONSTRAINT [PKNC_SpecialPricesMov_ID_1852] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SpecialPricesMoves] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[SpecialPricesMoves] ADD  DEFAULT ((0)) FOR [MinQuantity]
GO
ALTER TABLE [dbo].[SpecialPricesMoves] ADD  DEFAULT ((0)) FOR [PackQuantity]
GO
ALTER TABLE [dbo].[SpecialPricesMoves] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[SpecialPricesMoves] ADD  DEFAULT ((0)) FOR [SPID]
GO
ALTER TABLE [dbo].[SpecialPricesMoves] ADD  DEFAULT ((0)) FOR [DiscountPrc]
GO
