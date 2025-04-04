USE [Amodat712]
GO
/****** Object:  Table [dbo].[ProductUnits]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUnits](
	[ProductID] [nvarchar](40) NOT NULL,
	[Unit] [nvarchar](20) NOT NULL,
	[UnitPerPack] [decimal](9, 4) NOT NULL,
	[PriceChangePercent] [int] NOT NULL,
	[UnitBarcode] [nvarchar](50) NOT NULL,
	[RestrictToUnitMode] [int] NOT NULL,
	[Params] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ProductUnits] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[Unit] ASC,
	[UnitBarcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductUnits] ADD  CONSTRAINT [DF_ProductUnits_PriceChangePercent]  DEFAULT ((0)) FOR [PriceChangePercent]
GO
ALTER TABLE [dbo].[ProductUnits] ADD  CONSTRAINT [DF_ProductUnits_UnitBarcode]  DEFAULT ('') FOR [UnitBarcode]
GO
ALTER TABLE [dbo].[ProductUnits] ADD  CONSTRAINT [DF_ProductUnits_RestrictToUnitMode]  DEFAULT ((0)) FOR [RestrictToUnitMode]
GO
ALTER TABLE [dbo].[ProductUnits] ADD  CONSTRAINT [DF_ProductUnits_Params]  DEFAULT ((0)) FOR [Params]
GO
ALTER TABLE [dbo].[ProductUnits] ADD  CONSTRAINT [DF_ProductUnits_Added]  DEFAULT (getdate()) FOR [Added]
GO
