USE [Amodat712]
GO
/****** Object:  Table [dbo].[ClientsDiscounts]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientsDiscounts](
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[DiscountGroupID] [dbo].[utDiscountGroupIDLong] NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[PriceListID] [dbo].[utPriceListIDLong] NULL,
	[TextColor] [dbo].[utColorName] NULL,
	[BackColor] [dbo].[utColorName] NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ClientsDiscounts] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[DiscountGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientsDiscounts] ADD  CONSTRAINT [DF_ClientsDiscounts_ClientID]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[ClientsDiscounts] ADD  CONSTRAINT [DF_ClientsDiscounts_DiscountGroupID]  DEFAULT ('') FOR [DiscountGroupID]
GO
ALTER TABLE [dbo].[ClientsDiscounts] ADD  CONSTRAINT [DF_ClientsDiscounts_Discount]  DEFAULT (0) FOR [Discount]
GO
ALTER TABLE [dbo].[ClientsDiscounts] ADD  CONSTRAINT [DF_ClientsDiscounts_PriceListID]  DEFAULT ('') FOR [PriceListID]
GO
ALTER TABLE [dbo].[ClientsDiscounts] ADD  CONSTRAINT [DF_ClientsDiscounts_ColorCode]  DEFAULT ('') FOR [TextColor]
GO
ALTER TABLE [dbo].[ClientsDiscounts] ADD  CONSTRAINT [DF_ClientsDiscounts_BackColorID]  DEFAULT ('') FOR [BackColor]
GO
