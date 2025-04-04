USE [demo]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountKey] [varchar](15) NULL,
	[AccountDiscountCode] [int] NULL,
	[ItemDiscountCode] [varchar](5) NULL,
	[PriceListNumber] [int] NULL,
	[DiscountPrc] [float] NULL,
	[CommisionPrc] [float] NULL,
 CONSTRAINT [PKNC_Discounts_ID_493] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT ((0)) FOR [AccountDiscountCode]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT ((0)) FOR [PriceListNumber]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT ((0)) FOR [DiscountPrc]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT ((0)) FOR [CommisionPrc]
GO
