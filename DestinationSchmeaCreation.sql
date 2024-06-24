
/****** Object:  Table [dbo].[Alpha]    Script Date: 23-06-2024 10.47.42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gamma](
 [StudentID] [int] NULL,
 [FirstName] [varchar](255) NULL,
 [LastName] [varchar](255) NULL,
 [Age] [int] NULL,
 [City] [varchar](15) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Alpha](
	[time_period_start] [datetimeoffset](7) NULL,
	[time_period_end] [datetimeoffset](7) NULL,
	[Exact_time_open] [datetimeoffset](7) NULL,
	[Exact_time_close] [datetimeoffset](7) NULL,
	[rate_open] [decimal](8, 2) NULL,
	[rate_high] [decimal](8, 2) NULL,
	[rate_low] [decimal](8, 2) NULL,
	[rate_close] [decimal](8, 2) NULL,
	[Currency] [varchar](3) NULL,
	[AssetName] [varchar](8) NULL,
	[Asset] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beta]    Script Date: 24-02-2023 10.47.42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beta](
	[time_period_start] [datetimeoffset](7) NULL,
	[time_period_end] [datetimeoffset](7) NULL,
	[Exact_time_open] [datetimeoffset](7) NULL,
	[Exact_time_close] [datetimeoffset](7) NULL,
	[rate_open] [decimal](8, 2) NULL,
	[rate_high] [decimal](8, 2) NULL,
	[rate_low] [decimal](8, 2) NULL,
	[rate_close] [decimal](8, 2) NULL,
	[Currency] [varchar](3) NULL,
	[AssetName] [varchar](8) NULL,
	[Asset] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileMapping_mst]    Script Date: 24-02-2023 10.47.42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileMapping_mst](
	[ID] [int] NOT NULL,
	[TableName] [varchar](255) NOT NULL,
	[FileNamePrefix] [varchar](255) NOT NULL,
	[Path] [varchar](255) NOT NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[FileMapping_mst] ([ID], [TableName], [FileNamePrefix], [Path], [Active]) VALUES (1, N'Alpha', N'cryptoAlpha', N'Daily/alpha', 1)
INSERT [dbo].[FileMapping_mst] ([ID], [TableName], [FileNamePrefix], [Path], [Active]) VALUES (2, N'Beta', N'cryptoBeta', N'Daily/beta', 1)
INSERT [dbo].[FileMapping_mst] ([ID], [TableName], [FileNamePrefix], [Path], [Active]) VALUES (3, N'Gamma', N'GammaStudentData', N'Daily/inbound/gamma', 1)
INSERT [dbo].[FileMapping_mst] ([ID], [TableName], [FileNamePrefix], [Path], [Active]) VALUES (4, N'Crypto', N'bulkCrypto', N'Daily/inbound/Crypto', 0)
GO

select * from dbo.FileMapping_mst 

/****** source video https://www.youtube.com/watch?v=FdT1CmeXhpo&list=PLUYdS0azaz10Zfvyzor_9j-kdw7LbTaC7&index=4&t=133s ******/
