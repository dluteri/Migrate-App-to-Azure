

CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[SortNbr] [int] NULL,
	[ConferenceId] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsChildTicket] [bit] NOT NULL,
	[StartAgeRange] [int] NULL,
	[EndAgeRange] [int] NULL,
 CONSTRAINT [PK__Products__3214EC071E4B6D8B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendees]    Script Date: 5/19/2020 12:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](max) NULL,
	[OrderDetailId] [int] NULL,
	[Age] [varchar](max) NULL,
	[CheckinDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/19/2020 12:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/19/2020 12:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](500) NULL,
	[LastName] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[Email] [varchar](500) NULL,
	[Phone] [varchar](500) NULL,
	[ConfirmationCode] [varchar](500) NULL,
	[OrderMethod] [varchar](500) NULL,
	[ConferenceId] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[Comments] [varchar](max) NULL,
	[AddressLongitude] [numeric](18, 5) NULL,
	[AddressLatitude] [numeric](18, 5) NULL,
	[IpAddress] [varchar](500) NULL,
	[GetwayPaymentCode] [varchar](500) NULL,
	[City] [varchar](500) NULL,
	[State] [varchar](500) NULL,
	[Country] [varchar](500) NULL,
	[Zipcode] [varchar](500) NULL,
 CONSTRAINT [PK__Orders__3214EC0757D45F6F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 5/19/2020 12:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conferences]    Script Date: 5/19/2020 12:28:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConferenceName] [varchar](500) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[RegistrationStartDate] [datetime] NOT NULL,
	[RegistrationEndDate] [datetime] NULL,
	[ContactFormEmailTo] [varchar](500) NOT NULL,
	[RegistrationEmailFrom] [varchar](500) NOT NULL,
	[DebugEmailTo] [varchar](500) NULL,
 CONSTRAINT [PK_Conferences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[Conferences] ON 
GO
INSERT [dbo].[Conferences] ([Id], [ConferenceName], [StartDate], [EndDate], [RegistrationStartDate], [RegistrationEndDate], [ContactFormEmailTo], [RegistrationEmailFrom], [DebugEmailTo]) VALUES (1, N'USA Prophetic Convention 2019', CAST(N'2019-07-03T00:00:00.000' AS DateTime), CAST(N'2019-07-07T00:00:00.000' AS DateTime), CAST(N'2019-02-15T00:00:00.000' AS DateTime), CAST(N'2019-07-03T00:00:00.000' AS DateTime), N'contact@usapropheticconvention.com', N'contact@usapropheticconvention.com', N'webmaster@cmfimaryland.com')
GO
INSERT [dbo].[Conferences] ([Id], [ConferenceName], [StartDate], [EndDate], [RegistrationStartDate], [RegistrationEndDate], [ContactFormEmailTo], [RegistrationEmailFrom], [DebugEmailTo]) VALUES (4, N'USA Prophetic Convention 2020', CAST(N'2020-07-29T00:00:00.000' AS DateTime), CAST(N'2020-08-02T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, N'contact@usapropheticconvention.com', N'contact@usapropheticconvention.com', N'webmaster@cmfimaryland.com')
GO
SET IDENTITY_INSERT [dbo].[Conferences] OFF

INSERT [dbo].[Products] ([Id], [Name], [Price], [SortNbr], [ConferenceId], [ProductTypeId], [IsActive], [IsChildTicket], [StartAgeRange], [EndAgeRange]) VALUES (N'90f5ee56-da62-484f-a1ca-01a2e01dcecd', N'General Ticket', CAST(75.00 AS Decimal(18, 2)), 2, 1, 1, 1, 0, NULL, NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [SortNbr], [ConferenceId], [ProductTypeId], [IsActive], [IsChildTicket], [StartAgeRange], [EndAgeRange]) VALUES (N'8f6e3b85-55e7-45c2-8dce-08d7564cb2bf', N'High School Student Ticket', CAST(50.00 AS Decimal(18, 2)), 1, 4, 1, 1, 0, 14, 18)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [SortNbr], [ConferenceId], [ProductTypeId], [IsActive], [IsChildTicket], [StartAgeRange], [EndAgeRange]) VALUES (N'9f6e3b85-55e7-45c2-8dce-08d7564cb2bf', N'Middle School Student Ticket', CAST(25.00 AS Decimal(18, 2)), 1, 4, 1, 1, 0, 10, 13)
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 
GO
INSERT [dbo].[ProductTypes] ([Id], [Name], [IsActive]) VALUES (1, N'Registration', 1)
GO
INSERT [dbo].[ProductTypes] ([Id], [Name], [IsActive]) VALUES (2, N'Media', 1)
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
