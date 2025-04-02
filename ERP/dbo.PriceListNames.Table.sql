USE [demo]
GO
/****** Object:  Table [dbo].[PriceListNames]    Script Date: 01-Apr-25 12:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceListNames](
	[PriceListID] [int] IDENTITY(1,1) NOT NULL,
	[PriceListName] [varchar](50) NULL,
 CONSTRAINT [PKNC_PriceListNames_Pri_1503] PRIMARY KEY NONCLUSTERED 
(
	[PriceListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
