USE [Amodat712]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[BankID] [nvarchar](30) NOT NULL,
	[BranchID] [nvarchar](30) NOT NULL,
	[AccountNum] [nvarchar](30) NOT NULL,
	[BankName] [nvarchar](100) NOT NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[CountryID] [nvarchar](30) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC,
	[BranchID] ASC,
	[AccountNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_BankID]  DEFAULT ('') FOR [BankID]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_BranchID]  DEFAULT ('') FOR [BranchID]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_AccountNum]  DEFAULT ('') FOR [AccountNum]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_BankName]  DEFAULT ('') FOR [BankName]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_BranchName]  DEFAULT ('') FOR [BranchName]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_CountryID]  DEFAULT ('') FOR [CountryID]
GO
