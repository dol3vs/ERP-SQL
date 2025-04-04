USE [Amodat712]
GO
/****** Object:  Table [dbo].[ClientProducts]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProducts](
	[ClientProductID] [dbo].[utClientProdID] NOT NULL,
	[ProductID] [dbo].[utProductIDLong] NOT NULL,
	[OtherProductID] [dbo].[utProductIDLong] NOT NULL,
	[Price] [decimal](18, 4) NULL,
	[CurrencyCode] [nvarchar](40) NULL,
	[CurrencyRate] [decimal](9, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Discount2] [decimal](18, 2) NULL,
	[Bonus] [decimal](18, 2) NULL,
	[Params] [int] NULL,
	[LastDate] [datetime] NULL,
	[LastQuantity] [decimal](18, 2) NULL,
	[LastPrice] [decimal](18, 4) NULL,
	[Remark] [nvarchar](50) NULL,
	[SupplyerID] [nvarchar](50) NULL,
	[ExtraNum1] [decimal](18, 2) NULL,
	[StockStatus] [int] NOT NULL,
	[Extra1] [nvarchar](255) NULL,
	[Extra2] [nvarchar](255) NULL,
	[Extra3] [nvarchar](255) NULL,
	[Extra4] [nvarchar](255) NULL,
	[Extra5] [nvarchar](255) NULL,
	[Extra6] [nvarchar](255) NULL,
	[Extra7] [nvarchar](255) NULL,
	[Extra8] [nvarchar](255) NULL,
	[Extra9] [nvarchar](255) NULL,
	[Extra10] [nvarchar](255) NULL,
	[TextColor] [dbo].[utColorName] NULL,
	[BackColor] [dbo].[utColorName] NULL,
	[BOParams1] [nvarchar](50) NULL,
	[BOParams2] [nvarchar](50) NULL,
	[BOParams3] [nvarchar](50) NULL,
	[BOParams4] [nvarchar](50) NULL,
	[BOParams5] [nvarchar](50) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_spec] PRIMARY KEY NONCLUSTERED 
(
	[ClientProductID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_OtherProductID]  DEFAULT ('') FOR [OtherProductID]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_spec_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_CurrencyCode]  DEFAULT ('') FOR [CurrencyCode]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_CurrencyRate]  DEFAULT ((1)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_spec_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Discount1]  DEFAULT ((0)) FOR [Discount2]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Bonus]  DEFAULT ((0)) FOR [Bonus]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_spec_Params]  DEFAULT ((0)) FOR [Params]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_spec_LastDate]  DEFAULT ((0)) FOR [LastDate]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_spec_LastQuantity]  DEFAULT ((0)) FOR [LastQuantity]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_LastPrice]  DEFAULT ((0)) FOR [LastPrice]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_spec_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Remark1]  DEFAULT ('') FOR [SupplyerID]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_ExtraNum1]  DEFAULT ((0)) FOR [ExtraNum1]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_StockStatus]  DEFAULT ((0)) FOR [StockStatus]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra2]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra3]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra4]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra5]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra11]  DEFAULT ('') FOR [Extra6]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra21]  DEFAULT ('') FOR [Extra7]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra31]  DEFAULT ('') FOR [Extra8]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra41]  DEFAULT ('') FOR [Extra9]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Extra51]  DEFAULT ('') FOR [Extra10]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_Color]  DEFAULT ('') FOR [TextColor]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_BackColorID]  DEFAULT ('') FOR [BackColor]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_BOParams1]  DEFAULT ('') FOR [BOParams1]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_BOParams2]  DEFAULT ('') FOR [BOParams2]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_BOParams3]  DEFAULT ('') FOR [BOParams3]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_BOParams4]  DEFAULT ('') FOR [BOParams4]
GO
ALTER TABLE [dbo].[ClientProducts] ADD  CONSTRAINT [DF_ClientProducts_BOParams5]  DEFAULT ('') FOR [BOParams5]
GO
