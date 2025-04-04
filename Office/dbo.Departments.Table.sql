USE [Amodat712]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 01-Apr-25 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [dbo].[utDepartmentIDLong] NOT NULL,
	[MainDepartmentID] [dbo].[utDepartmentIDLong] NOT NULL,
	[IsParent] [bit] NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[SortField] [nvarchar](255) NOT NULL,
	[AttachmentsData] [nvarchar](max) NULL,
	[Params] [int] NOT NULL,
	[Added] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY NONCLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DepartmentID]  DEFAULT ('') FOR [DepartmentID]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_MainDepartmentID]  DEFAULT ('') FOR [MainDepartmentID]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_IsParent]  DEFAULT ((0)) FOR [IsParent]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DepartmentName]  DEFAULT ('') FOR [DepartmentName]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_SortField]  DEFAULT ('') FOR [SortField]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_AttachmentsData]  DEFAULT ('') FOR [AttachmentsData]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Params]  DEFAULT ((0)) FOR [Params]
GO
