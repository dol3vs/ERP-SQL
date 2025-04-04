USE [Amodat712]
GO
/****** Object:  Table [dbo].[ProductClientLimit]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductClientLimit](
	[ClientID] [nvarchar](50) NOT NULL,
	[AmodatDocTypeID] [int] NOT NULL,
	[ProductID] [nvarchar](40) NOT NULL,
	[MaxQuantity] [decimal](9, 2) NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ProductClientLimit] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[AmodatDocTypeID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductClientLimit] ADD  CONSTRAINT [DF_ProductClientLimit_Added]  DEFAULT (getdate()) FOR [Added]
GO
