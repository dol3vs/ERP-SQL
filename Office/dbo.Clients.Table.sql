USE [Amodat712]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[MainClientID] [dbo].[utClientIDLong] NULL,
	[IsParent] [bit] NULL,
	[ClientName] [dbo].[utClientName] NULL,
	[Barcode] [nvarchar](30) NULL,
	[PaymentTermsID] [dbo].[utPaymentTermsIDLong] NOT NULL,
	[PaymentCount] [int] NULL,
	[TypeID] [dbo].[utClientType] NULL,
	[SubTypeID] [dbo].[utClientSubTypeID] NULL,
	[StatusID] [dbo].[utClientStatusID] NULL,
	[BonusID] [dbo].[utBonusIDLong] NULL,
	[Address] [nvarchar](255) NULL,
	[Country] [dbo].[utCountry] NULL,
	[State] [dbo].[utState] NULL,
	[City] [dbo].[utCity] NULL,
	[Zip] [nvarchar](20) NULL,
	[Phone] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Mobile] [nvarchar](30) NULL,
	[Mail] [nvarchar](50) NULL,
	[Mail2] [nvarchar](50) NULL,
	[Notes] [nvarchar](255) NULL,
	[UsedCredit] [decimal](18, 2) NULL,
	[OpenDebt] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[FuturePayments] [decimal](18, 2) NULL,
	[Industry] [nvarchar](50) NULL,
	[Params] [int] NULL,
	[Discount] [decimal](18, 2) NULL,
	[PriceListID] [dbo].[utPriceListIDLong] NOT NULL,
	[Vat] [decimal](18, 2) NULL,
	[DefaultDocTypeID] [int] NOT NULL,
	[Bank] [nvarchar](30) NOT NULL,
	[Branch] [nvarchar](30) NOT NULL,
	[AccountNum] [nvarchar](30) NOT NULL,
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
	[Extra11] [nvarchar](255) NULL,
	[Extra12] [nvarchar](255) NULL,
	[Extra13] [nvarchar](255) NULL,
	[Extra14] [nvarchar](255) NULL,
	[Extra15] [nvarchar](255) NULL,
	[Extra16] [nvarchar](255) NULL,
	[Extra17] [nvarchar](255) NULL,
	[Extra18] [nvarchar](255) NULL,
	[Extra19] [nvarchar](255) NULL,
	[Extra20] [nvarchar](255) NULL,
	[Extra21] [nvarchar](255) NULL,
	[Extra22] [nvarchar](255) NULL,
	[Extra23] [nvarchar](255) NULL,
	[Extra24] [nvarchar](255) NULL,
	[Extra25] [nvarchar](255) NULL,
	[Extra26] [nvarchar](255) NULL,
	[Extra27] [nvarchar](255) NULL,
	[Extra28] [nvarchar](255) NULL,
	[Extra29] [nvarchar](255) NULL,
	[Extra30] [nvarchar](255) NULL,
	[SmartSaleUser] [nvarchar](50) NULL,
	[SmartSalePassword] [nvarchar](50) NULL,
	[TextColor] [dbo].[utColorName] NULL,
	[BackColor] [dbo].[utColorName] NULL,
	[RecordStatus] [int] NOT NULL,
	[BOParams1] [nvarchar](50) NULL,
	[BOParams2] [nvarchar](50) NULL,
	[BOParams3] [nvarchar](50) NULL,
	[BOParams4] [nvarchar](50) NULL,
	[BOParams5] [nvarchar](50) NULL,
	[Rating] [nvarchar](50) NULL,
	[RatingColor] [nvarchar](50) NULL,
	[RatingFrequency] [int] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastDocTotal] [decimal](18, 2) NULL,
	[LastDocDate] [datetime] NULL,
	[LinesTarget] [nvarchar](50) NULL,
	[ActiveDaysAndHours] [nvarchar](1000) NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
	[SuccessDesc] [nvarchar](50) NULL,
	[ClientVatID] [nvarchar](50) NULL,
	[Language] [nvarchar](30) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY NONCLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_MainClientID]  DEFAULT ('') FOR [MainClientID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_IsParent]  DEFAULT ((0)) FOR [IsParent]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_ClientName]  DEFAULT ('') FOR [ClientName]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Barcode]  DEFAULT ('') FOR [Barcode]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_PaymentTermsID]  DEFAULT ((0)) FOR [PaymentTermsID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_PaymentCount]  DEFAULT ((1)) FOR [PaymentCount]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Type]  DEFAULT ((0)) FOR [TypeID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_SubType]  DEFAULT ((0)) FOR [SubTypeID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Status]  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BonusID]  DEFAULT ('') FOR [BonusID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Address]  DEFAULT ('') FOR [Address]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Country]  DEFAULT ('') FOR [Country]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_State]  DEFAULT ('') FOR [State]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_City]  DEFAULT ('') FOR [City]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Zip]  DEFAULT ('') FOR [Zip]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Phone]  DEFAULT ('') FOR [Phone]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Fax]  DEFAULT ('') FOR [Fax]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Mobile]  DEFAULT ('') FOR [Mobile]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Notes]  DEFAULT ('') FOR [Notes]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Balance]  DEFAULT ((0)) FOR [UsedCredit]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Obligo]  DEFAULT ((0)) FOR [OpenDebt]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Credit]  DEFAULT ((0)) FOR [Credit]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_FuturePayments]  DEFAULT ((0)) FOR [FuturePayments]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Industry]  DEFAULT ('') FOR [Industry]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Params]  DEFAULT ((0)) FOR [Params]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_PriceListID]  DEFAULT ('') FOR [PriceListID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Vat]  DEFAULT ((0)) FOR [Vat]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DefaultDocTypeID]  DEFAULT ((0)) FOR [DefaultDocTypeID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Bank]  DEFAULT ('') FOR [Bank]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Branch]  DEFAULT ('') FOR [Branch]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_AccountNum]  DEFAULT ('') FOR [AccountNum]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra2]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra3]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra4]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra5]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra11]  DEFAULT ('') FOR [Extra6]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra21]  DEFAULT ('') FOR [Extra7]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra31]  DEFAULT ('') FOR [Extra8]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra41]  DEFAULT ('') FOR [Extra9]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra51]  DEFAULT ('') FOR [Extra10]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra12]  DEFAULT ('') FOR [Extra11]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra22]  DEFAULT ('') FOR [Extra12]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra32]  DEFAULT ('') FOR [Extra13]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra42]  DEFAULT ('') FOR [Extra14]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra52]  DEFAULT ('') FOR [Extra15]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra16]  DEFAULT ('') FOR [Extra16]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra17]  DEFAULT ('') FOR [Extra17]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra18]  DEFAULT ('') FOR [Extra18]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra19]  DEFAULT ('') FOR [Extra19]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra20]  DEFAULT ('') FOR [Extra20]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra21_1]  DEFAULT ('') FOR [Extra21]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra23]  DEFAULT ('') FOR [Extra23]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra24]  DEFAULT ('') FOR [Extra24]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra26]  DEFAULT ('') FOR [Extra26]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra27]  DEFAULT ('') FOR [Extra27]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra28]  DEFAULT ('') FOR [Extra28]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra29]  DEFAULT ('') FOR [Extra29]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Extra30]  DEFAULT ('') FOR [Extra30]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_TextColorID]  DEFAULT ('') FOR [TextColor]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BackColorID]  DEFAULT ('') FOR [BackColor]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BOParams1]  DEFAULT ('') FOR [BOParams1]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BOParams2]  DEFAULT ('') FOR [BOParams2]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BOParams3]  DEFAULT ('') FOR [BOParams3]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BOParams4]  DEFAULT ('') FOR [BOParams4]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_BOParams5]  DEFAULT ('') FOR [BOParams5]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Rating]  DEFAULT ('') FOR [Rating]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_RatingColor]  DEFAULT ('') FOR [RatingColor]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_RatingFrequency]  DEFAULT ((0)) FOR [RatingFrequency]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_LastDocTotal]  DEFAULT ((0)) FOR [LastDocTotal]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_LinesTarget]  DEFAULT ('') FOR [LinesTarget]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_ActiveDaysAndHours]  DEFAULT ('') FOR [ActiveDaysAndHours]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Latitude]  DEFAULT ('') FOR [Latitude]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Longitude]  DEFAULT ('') FOR [Longitude]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_SuccessDesc]  DEFAULT ('') FOR [SuccessDesc]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_ClientVatID]  DEFAULT ('') FOR [ClientVatID]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Language]  DEFAULT ('') FOR [Language]
GO
