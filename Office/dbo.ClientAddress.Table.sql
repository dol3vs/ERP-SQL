USE [Amodat712]
GO
/****** Object:  Table [dbo].[ClientAddress]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientAddress](
	[AddressID] [nvarchar](200) NOT NULL,
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[City] [dbo].[utCity] NOT NULL,
	[State] [dbo].[utState] NULL,
	[Country] [dbo].[utCountry] NULL,
	[Zip] [nvarchar](20) NULL,
	[Phone] [nvarchar](30) NULL,
	[Extra1] [nvarchar](255) NULL,
	[Extra2] [nvarchar](255) NULL,
	[Extra3] [nvarchar](255) NULL,
	[Extra4] [nvarchar](255) NULL,
	[Extra5] [nvarchar](255) NULL,
	[Vat] [decimal](18, 2) NOT NULL,
	[DistributionDays] [nvarchar](50) NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_ClientAddress] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC,
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Address]  DEFAULT ('') FOR [Address]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_City]  DEFAULT ('') FOR [City]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_State]  DEFAULT ('') FOR [State]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Country]  DEFAULT ('') FOR [Country]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Zip]  DEFAULT ('') FOR [Zip]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Phone]  DEFAULT ('') FOR [Phone]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Extra1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Extra2]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Extra3]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Extra4]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Extra5]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_Discount1]  DEFAULT ((0)) FOR [Vat]
GO
ALTER TABLE [dbo].[ClientAddress] ADD  CONSTRAINT [DF_ClientAddress_ActiveDays]  DEFAULT (N'1,2,3,4,5') FOR [DistributionDays]
GO
