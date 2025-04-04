USE [Amodat712]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [dbo].[utContactIDLong] NOT NULL,
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[Phone] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Mobile] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[Remark] [nvarchar](255) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Country] [dbo].[utCountry] NULL,
	[State] [dbo].[utState] NULL,
	[City] [dbo].[utCity] NULL,
	[Zip] [nvarchar](20) NULL,
	[Extra1] [nvarchar](255) NULL,
	[Extra2] [nvarchar](255) NULL,
	[Extra3] [nvarchar](255) NULL,
	[Extra4] [nvarchar](255) NULL,
	[Extra5] [nvarchar](255) NULL,
	[ExtraDate1] [datetime] NULL,
	[ExtraDate2] [datetime] NULL,
	[RecordStatus] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_CONTACT] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_ClientID]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_CONTACT_FIRSTNAME]  DEFAULT ('') FOR [FirstName]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_CONTACT_LASTNAME]  DEFAULT ('') FOR [LastName]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_JobTitle]  DEFAULT ('') FOR [JobTitle]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Phone]  DEFAULT ('') FOR [Phone]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Fax]  DEFAULT ('') FOR [Fax]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Mobile]  DEFAULT ('') FOR [Mobile]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Email]  DEFAULT ('') FOR [Email]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Address]  DEFAULT ('') FOR [Address1]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Address2]  DEFAULT ('') FOR [Address2]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Country]  DEFAULT ('') FOR [Country]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_State]  DEFAULT ('') FOR [State]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_City]  DEFAULT ('') FOR [City]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Zip]  DEFAULT ('') FOR [Zip]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Extra1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Extra2]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Extra3]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Extra4]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_Extra5]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF_Contacts_RecordStatus]  DEFAULT (0) FOR [RecordStatus]
GO
