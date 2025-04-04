USE [Amodat712]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 01-Apr-25 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[LoginName] [nvarchar](50) NULL,
	[AgentID] [dbo].[utAgentIDLong] NOT NULL,
	[AgentName] [dbo].[utAgentName] NULL,
	[Password] [nvarchar](50) NULL,
	[UserType] [nvarchar](50) NULL,
	[CustomizationMode] [int] NULL,
	[AgentPalmDir] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[HomeAddress] [nvarchar](50) NULL,
	[PhoneHome] [nvarchar](30) NULL,
	[PhoneOffice] [nvarchar](30) NULL,
	[PhoneMobile] [nvarchar](30) NULL,
	[Language] [nvarchar](30) NULL,
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
	[FreeMemory] [int] NULL,
	[TotalMemory] [int] NULL,
	[OS] [nvarchar](50) NULL,
	[OSVer] [nvarchar](50) NULL,
	[BatteryStatus] [int] NULL,
	[NumOfCards] [int] NULL,
	[DeviceID] [nvarchar](100) NULL,
	[AutoShowClientCollect] [int] NULL,
	[AutoShowClientProductRemark] [int] NULL,
	[AutoShowClientRemark] [int] NULL,
	[AutoShowProductRemark] [int] NULL,
	[DaysToDeliver] [int] NULL,
	[DocProfitPercent] [int] NULL,
	[LowDocProfitPercent] [int] NULL,
	[DocSalesParams] [int] NULL,
	[IsAllowClientProductPriceBelowMin] [int] NULL,
	[IsCalculatingSales] [int] NULL,
	[IsShowDocProfitPercent] [int] NULL,
	[MainWarehouseID] [dbo].[utWarehouseIDLong] NULL,
	[IsAllowChangeSourceWarehouse] [int] NULL,
	[IsAllowDocumentRowWithOnlyBonus] [int] NULL,
	[RestrictProductDiscount1Change] [int] NULL,
	[RestrictProductDiscount2Change] [int] NULL,
	[RestrictDocumentDiscount1Change] [int] NULL,
	[RestrictDocumentDiscount2Change] [int] NULL,
	[MaxProductDiscount1Allowed] [int] NULL,
	[MaxProductDiscount2Allowed] [int] NULL,
	[MaxDocumentDiscount1Allowed] [int] NULL,
	[MaxDocumentDiscount2Allowed] [int] NULL,
	[MinimumDocTotalAllowed] [int] NULL,
	[MinPricePercentRange] [int] NULL,
	[RestrictClientProductPriceChange] [int] NULL,
	[RestrictDocProfitPercent] [int] NULL,
	[RestrictDocTotalBelowMin] [int] NULL,
	[RestrictPriceBelowMin] [int] NULL,
	[RestrictProductBonus] [int] NULL,
	[RestrictProductPriceChange] [int] NULL,
	[RestrictQtyAboveStock] [int] NULL,
	[OutlookProfile] [varchar](50) NULL,
	[OutlookLastRead] [datetime] NULL,
	[PrintDocOnSave] [int] NULL,
	[ServCallDeviceRequired] [int] NULL,
	[ServCallRestrictZeroAmount] [int] NULL,
	[ServCallFormRequired] [int] NULL,
	[ServCallHandleToday] [int] NULL,
	[HideMinPrice] [int] NULL,
	[AgentsManagerOptions] [int] NULL,
	[IsShowClientExtraPages] [int] NULL,
	[ShowOnScreenKeyboard] [bit] NOT NULL,
	[CreateFormsAtStart] [bit] NULL,
	[IsWinCeDevice] [bit] NULL,
	[ServCallDefaultTypesGroup] [nvarchar](50) NULL,
	[GPSPortName] [nvarchar](30) NULL,
	[GPSBaudRate] [int] NULL,
	[DocTarget] [int] NULL,
	[DocsDailyTarget] [int] NULL,
	[StartAddressLatitude] [nvarchar](50) NULL,
	[StartAddressLongitude] [nvarchar](50) NULL,
	[EndAddressLatitude] [nvarchar](50) NULL,
	[EndAddressLongitude] [nvarchar](50) NULL,
	[ClearDataDisabled] [bit] NULL,
	[AgentLastPasswordChangeDate] [datetime] NULL,
	[AgentPasswordValidityDays] [int] NULL,
	[AgentDaysPeriodToChangePassword] [int] NULL,
	[AgentDeviceSecurityMode] [int] NULL,
	[LastSync] [datetime] NULL,
	[IsActiveSupportCenter] [int] NULL,
	[RestrictProductProfitPercent] [int] NULL,
	[MinProductProfitPercent] [decimal](5, 2) NULL,
	[LowProductProfitPercent] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[AgentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Agents] UNIQUE NONCLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_UserType_1]  DEFAULT ('') FOR [UserType]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_PhoneHome]  DEFAULT ('') FOR [PhoneHome]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_Language]  DEFAULT ('') FOR [Language]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_OS]  DEFAULT ('') FOR [OS]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_OSVer]  DEFAULT ('') FOR [OSVer]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_NumOfCards]  DEFAULT ((0)) FOR [NumOfCards]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_DeviceID]  DEFAULT ('') FOR [DeviceID]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_ShowOnScreenKeyboard]  DEFAULT ((0)) FOR [ShowOnScreenKeyboard]
GO
ALTER TABLE [dbo].[Agents] ADD  CONSTRAINT [DF_Agents_ServCallDefaultTypesGroup]  DEFAULT ('') FOR [ServCallDefaultTypesGroup]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Agents', @level2type=N'COLUMN',@level2name=N'Extra6'
GO
