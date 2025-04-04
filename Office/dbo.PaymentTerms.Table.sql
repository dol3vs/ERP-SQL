USE [Amodat712]
GO
/****** Object:  Table [dbo].[PaymentTerms]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTerms](
	[PaymentTermsID] [dbo].[utPaymentTermsIDLong] NOT NULL,
	[PaymentTerms] [nvarchar](50) NULL,
	[IsDueMonth] [bit] NULL,
	[ExtraDays] [int] NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_PaymentTerms] PRIMARY KEY CLUSTERED 
(
	[PaymentTermsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentTerms] ADD  CONSTRAINT [DF_PaymentTerms_PaymentTerms]  DEFAULT ('') FOR [PaymentTerms]
GO
ALTER TABLE [dbo].[PaymentTerms] ADD  CONSTRAINT [DF_PaymentTerms_IsDueMonth]  DEFAULT (0) FOR [IsDueMonth]
GO
ALTER TABLE [dbo].[PaymentTerms] ADD  CONSTRAINT [DF_PaymentTerms_ExtraDays]  DEFAULT (0) FOR [ExtraDays]
GO
