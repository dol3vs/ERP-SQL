USE [Amodat712]
GO
/****** Object:  Table [dbo].[DocumentsOutMain]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsOutMain](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[AmodatDocTypeID] [int] NOT NULL,
	[DocNum] [dbo].[utDocumentIDLong] NOT NULL,
	[AgentID] [dbo].[utAgentIDLong] NOT NULL,
	[ClientID] [dbo].[utClientIDLong] NOT NULL,
	[ClientName] [dbo].[utClientName] NOT NULL,
	[WarehouseID] [dbo].[utWarehouseIDLong] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[TransmitDate] [datetime] NOT NULL,
	[DocStatusID] [dbo].[utDocStatusIDLong] NOT NULL,
	[DocStatus] [dbo].[utDocStatus] NOT NULL,
	[Closed] [bit] NOT NULL,
	[CloseProbability] [decimal](9, 2) NOT NULL,
	[DocStartTime] [datetime] NOT NULL,
	[DocEndTime] [datetime] NOT NULL,
	[SendFax] [bit] NOT NULL,
	[FaxNum] [nvarchar](30) NOT NULL,
	[SendEmail] [bit] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SendWhatsapp] [bit] NOT NULL,
	[Mobile] [nvarchar](30) NOT NULL,
	[Signature] [nvarchar](1000) NOT NULL,
	[SigName] [nvarchar](30) NOT NULL,
	[Remark] [nvarchar](255) NOT NULL,
	[Remark1] [nvarchar](255) NOT NULL,
	[Remark2] [nvarchar](255) NOT NULL,
	[Remark3] [nvarchar](255) NOT NULL,
	[Remark4] [nvarchar](255) NOT NULL,
	[SupplyDate] [datetime] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentCount] [int] NOT NULL,
	[Reference1] [nvarchar](20) NOT NULL,
	[Reference2] [nvarchar](20) NOT NULL,
	[Discount1] [decimal](18, 2) NOT NULL,
	[Discount2] [decimal](36, 20) NOT NULL,
	[TotalMin] [decimal](18, 4) NOT NULL,
	[TotalSumBeforeRowsVat] [decimal](18, 4) NOT NULL,
	[TotalSumBeforeDiscounts] [decimal](18, 4) NOT NULL,
	[TotalSumBeforeRowsVatAfterDiscounts] [decimal](18, 4) NOT NULL,
	[TotalSum] [decimal](18, 4) NOT NULL,
	[Vat] [decimal](9, 2) NOT NULL,
	[TotalVat] [decimal](18, 4) NOT NULL,
	[TotalRowsVat] [decimal](18, 4) NOT NULL,
	[TotalSumVat] [decimal](18, 4) NOT NULL,
	[ProfitPercent] [decimal](18, 2) NOT NULL,
	[ReceiptTotal] [decimal](18, 4) NOT NULL,
	[ReceiptCash] [decimal](18, 4) NOT NULL,
	[IsReceiptCashDeposited] [bit] NOT NULL,
	[IsRowsVatConst] [bit] NOT NULL,
	[LineCount] [int] NOT NULL,
	[LineCountNoParents] [int] NOT NULL,
	[TotalWeight] [decimal](18, 2) NOT NULL,
	[TotalVolume] [decimal](18, 2) NOT NULL,
	[BandleNum] [nvarchar](20) NOT NULL,
	[DeliveryAddressID] [nvarchar](200) NOT NULL,
	[DeliveryAddress] [nvarchar](50) NOT NULL,
	[DeliveryCity] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[MobileParams] [int] NOT NULL,
	[IsCopy] [bit] NOT NULL,
	[SaleParams] [int] NOT NULL,
	[IsDocument] [bit] NOT NULL,
	[IsSourcePrinted] [bit] NOT NULL,
	[IsFaxed] [bit] NOT NULL,
	[IsPrinted] [bit] NOT NULL,
	[IsEmailed] [bit] NOT NULL,
	[IsSentWhatsapp] [bit] NOT NULL,
	[IsHandledByPrintService] [bit] NOT NULL,
	[IsTransferToBOApproved] [bit] NOT NULL,
	[IsTransferedToBO] [bit] NOT NULL,
	[IsTransferedToBOFailed] [bit] NOT NULL,
	[TransferedToBOMessage] [nvarchar](1024) NOT NULL,
	[BODocNum] [nvarchar](40) NULL,
	[IsReadOnly] [bit] NOT NULL,
	[Barcode] [nvarchar](30) NULL,
	[SupplyerID] [nvarchar](50) NULL,
	[PrintRemarks] [nvarchar](255) NOT NULL,
	[BasedOnDocNum] [dbo].[utDocumentIDLong] NULL,
	[BasedOnAmodatDocTypeID] [int] NULL,
	[BasedOnTotalSumVat] [decimal](18, 4) NOT NULL,
	[Remark5] [nvarchar](255) NOT NULL,
	[Remark6] [nvarchar](255) NOT NULL,
	[Remark7] [nvarchar](255) NOT NULL,
	[Remark8] [nvarchar](255) NOT NULL,
	[Remark9] [nvarchar](255) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[PDFLink] [nvarchar](256) NULL,
	[ISRTaxesConfirmationNum] [nvarchar](50) NOT NULL,
	[ISRTaxesShortConfirmationNum] [nvarchar](50) NOT NULL,
	[ISRTaxesErrorMessage] [nvarchar](1024) NOT NULL,
	[RecordStatus] [int] NOT NULL,
	[BOParams1] [nvarchar](50) NULL,
	[BOParams2] [nvarchar](50) NULL,
	[BOParams3] [nvarchar](50) NULL,
	[BOParams4] [nvarchar](50) NULL,
	[BOParams5] [nvarchar](50) NULL,
	[ClientParams] [int] NOT NULL,
	[DocTypeParams] [int] NOT NULL,
	[ClientPriceListID] [dbo].[utPriceListIDLong] NOT NULL,
	[DefaultPriceListID] [dbo].[utPriceListIDLong] NOT NULL,
	[ClientCategoryID] [int] NULL,
	[CreatorLogin] [nvarchar](50) NOT NULL,
	[CreatorRole] [nvarchar](50) NOT NULL,
	[CreatorDeviceType] [nvarchar](50) NOT NULL,
	[ApprovedRequests] [nvarchar](512) NOT NULL,
	[Extra1] [nvarchar](255) NULL,
	[Extra2] [nvarchar](255) NULL,
	[Extra3] [nvarchar](255) NULL,
	[Extra4] [nvarchar](255) NULL,
	[Extra5] [nvarchar](255) NULL,
	[Extra6] [nvarchar](255) NULL,
	[Extra7] [nvarchar](255) NULL,
	[Extra8] [nvarchar](255) NULL,
	[Extra9] [nvarchar](1024) NULL,
	[Extra10] [nvarchar](1024) NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_DocumentsOutMain] PRIMARY KEY CLUSTERED 
(
	[AmodatDocTypeID] ASC,
	[DocNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_DocNum]  DEFAULT ('') FOR [DocNum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_AgentID]  DEFAULT ('') FOR [AgentID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_ClientID]  DEFAULT ('') FOR [ClientID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_ClientName_1]  DEFAULT ('') FOR [ClientName]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_WarehouseID]  DEFAULT ('') FOR [WarehouseID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Date]  DEFAULT ((0)) FOR [CreateDate]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TransmitDate]  DEFAULT (getdate()) FOR [TransmitDate]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Status]  DEFAULT ('') FOR [DocStatusID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_DocStatus]  DEFAULT ('') FOR [DocStatus]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Closed]  DEFAULT ((0)) FOR [Closed]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_CloseProbability]  DEFAULT ((0)) FOR [CloseProbability]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_DocStartTime]  DEFAULT ((0)) FOR [DocStartTime]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_DocEndTime]  DEFAULT ((0)) FOR [DocEndTime]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_SendFax]  DEFAULT ((0)) FOR [SendFax]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_FaxNum]  DEFAULT ('') FOR [FaxNum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_SendEmail]  DEFAULT ((0)) FOR [SendEmail]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Email]  DEFAULT ('') FOR [Email]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_SendWhatsapp]  DEFAULT ((0)) FOR [SendWhatsapp]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Mobile]  DEFAULT ('') FOR [Mobile]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Sig]  DEFAULT ('') FOR [Signature]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_SigName]  DEFAULT ('') FOR [SigName]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Remark1]  DEFAULT ('') FOR [Remark1]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Remark2]  DEFAULT ('') FOR [Remark2]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Remark3]  DEFAULT ('') FOR [Remark3]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Remark4]  DEFAULT ('') FOR [Remark4]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_SupplyDate]  DEFAULT ((0)) FOR [SupplyDate]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_PaymentDate]  DEFAULT ((0)) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_PaymentCount]  DEFAULT ((1)) FOR [PaymentCount]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_RefNum1]  DEFAULT ('') FOR [Reference1]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_RefNum2]  DEFAULT ('') FOR [Reference2]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Discount1]  DEFAULT ((0)) FOR [Discount1]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Discount2]  DEFAULT ((0)) FOR [Discount2]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalMin_1]  DEFAULT ((0)) FOR [TotalMin]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalSumBeforeRowsVat]  DEFAULT ((0)) FOR [TotalSumBeforeRowsVat]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalSumBeforeDiscounts_1]  DEFAULT ((0)) FOR [TotalSumBeforeDiscounts]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalSumBeforeRowsVatAfterDiscounts_1]  DEFAULT ((0)) FOR [TotalSumBeforeRowsVatAfterDiscounts]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalSum_1]  DEFAULT ((0)) FOR [TotalSum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Vat_1]  DEFAULT ((0)) FOR [Vat]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalVat_1]  DEFAULT ((0)) FOR [TotalVat]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalRowsVat]  DEFAULT ((0)) FOR [TotalRowsVat]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalSumVat_1]  DEFAULT ((0)) FOR [TotalSumVat]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ProfitPercent_1]  DEFAULT ((0)) FOR [ProfitPercent]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ReceiptTotal_1]  DEFAULT ((0)) FOR [ReceiptTotal]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ReceiptCash_1]  DEFAULT ((0)) FOR [ReceiptCash]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsReceiptCashDeposited]  DEFAULT ((0)) FOR [IsReceiptCashDeposited]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsRowsVatConst_1]  DEFAULT ((1)) FOR [IsRowsVatConst]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_Lines]  DEFAULT ((0)) FOR [LineCount]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_LineCountNoParents]  DEFAULT ((0)) FOR [LineCountNoParents]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalWeight]  DEFAULT ((0)) FOR [TotalWeight]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TotalVolume]  DEFAULT ((0)) FOR [TotalVolume]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_BandleNum]  DEFAULT ('') FOR [BandleNum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_AddressID]  DEFAULT ('') FOR [DeliveryAddressID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_DeliverAddress]  DEFAULT ('') FOR [DeliveryAddress]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_DeliverCity]  DEFAULT ('') FOR [DeliveryCity]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Location]  DEFAULT ('') FOR [Location]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_MobileParams]  DEFAULT ((0)) FOR [MobileParams]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_IsCopy]  DEFAULT ((1)) FOR [IsCopy]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_SaleParams]  DEFAULT ((0)) FOR [SaleParams]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsDocument]  DEFAULT ((0)) FOR [IsDocument]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsSourcePrinted]  DEFAULT ((0)) FOR [IsSourcePrinted]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_IsFax]  DEFAULT ((0)) FOR [IsFaxed]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_IsPrinted]  DEFAULT ((0)) FOR [IsPrinted]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsEmailed]  DEFAULT ((0)) FOR [IsEmailed]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsSentWhatsapp]  DEFAULT ((0)) FOR [IsSentWhatsapp]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsHandledByPrintService]  DEFAULT ((1)) FOR [IsHandledByPrintService]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsTransferToBOApproved]  DEFAULT ((0)) FOR [IsTransferToBOApproved]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_OrdersMain_IsTransferedToAccount]  DEFAULT ((0)) FOR [IsTransferedToBO]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsTransferedToBOFailed]  DEFAULT ((0)) FOR [IsTransferedToBOFailed]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_TransferedToBOMessage]  DEFAULT ('') FOR [TransferedToBOMessage]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_IsUpdatable]  DEFAULT ((0)) FOR [IsReadOnly]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Barcode]  DEFAULT ('') FOR [Barcode]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_SupplyerID]  DEFAULT ('') FOR [SupplyerID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Remark5]  DEFAULT ('') FOR [PrintRemarks]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BasedOnDocNum]  DEFAULT ('') FOR [BasedOnDocNum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BasedOnTotalSumVat]  DEFAULT ((0)) FOR [BasedOnTotalSumVat]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Remark5_1]  DEFAULT ('') FOR [Remark5]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Remark6]  DEFAULT ('') FOR [Remark6]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Remark7]  DEFAULT ('') FOR [Remark7]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Remark8]  DEFAULT ('') FOR [Remark8]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Remark9]  DEFAULT ('') FOR [Remark9]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Discount11]  DEFAULT ((0)) FOR [DiscountAmount]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_PDFLink]  DEFAULT ('') FOR [PDFLink]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ISRTaxesConfirmationNum]  DEFAULT ('') FOR [ISRTaxesConfirmationNum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ISRTaxesShortConfirmationNum]  DEFAULT ('') FOR [ISRTaxesShortConfirmationNum]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ISRTaxesErrorMessage]  DEFAULT ('') FOR [ISRTaxesErrorMessage]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BOParams1]  DEFAULT ('') FOR [BOParams1]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BOParams2]  DEFAULT ('') FOR [BOParams2]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BOParams3]  DEFAULT ('') FOR [BOParams3]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BOParams4]  DEFAULT ('') FOR [BOParams4]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_BOParams5]  DEFAULT ('') FOR [BOParams5]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ClientParams]  DEFAULT ((0)) FOR [ClientParams]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_DocTypeParams]  DEFAULT ((0)) FOR [DocTypeParams]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ClientPriceListID]  DEFAULT ('') FOR [ClientPriceListID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_DefaultPriceListID]  DEFAULT ('') FOR [DefaultPriceListID]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_CreatorLogin]  DEFAULT ('') FOR [CreatorLogin]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_CreatorRole]  DEFAULT ('') FOR [CreatorRole]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_CreatorDeviceType]  DEFAULT ('') FOR [CreatorDeviceType]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_ApprovedRequests]  DEFAULT ('') FOR [ApprovedRequests]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra1]  DEFAULT ('') FOR [Extra1]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra2]  DEFAULT ('') FOR [Extra2]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra3]  DEFAULT ('') FOR [Extra3]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra4]  DEFAULT ('') FOR [Extra4]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra5]  DEFAULT ('') FOR [Extra5]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra6]  DEFAULT ('') FOR [Extra6]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra7]  DEFAULT ('') FOR [Extra7]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra8]  DEFAULT ('') FOR [Extra8]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra9]  DEFAULT ('') FOR [Extra9]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Extra10]  DEFAULT ('') FOR [Extra10]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Added]  DEFAULT (getdate()) FOR [Added]
GO
ALTER TABLE [dbo].[DocumentsOutMain] ADD  CONSTRAINT [DF_DocumentsOutMain_Updated]  DEFAULT (getdate()) FOR [Updated]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total minimum price allowed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalMin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total sum before calculating Rows Vat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalSumBeforeRowsVat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total sum including Rows Vat but before calculating discounts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalSumBeforeDiscounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total sum before calculating Rows Vat and After calculating Discounts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalSumBeforeRowsVatAfterDiscounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total sum after calculating discounts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalSum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vat percent of document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'Vat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vat amount of document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalVat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vat amount of rows in document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalRowsVat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total sum including everything (amount to charge)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'TotalSumVat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates wethear the vat in all the rows is the same' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentsOutMain', @level2type=N'COLUMN',@level2name=N'IsRowsVatConst'
GO
