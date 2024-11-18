USE [master]
GO
/****** Object:  Database [Master_Pol]    Script Date: 18.11.2024 16:10:04 ******/
CREATE DATABASE [Master_Pol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Master_Pol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Master_Pol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Master_Pol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Master_Pol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Master_Pol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Master_Pol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Master_Pol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Master_Pol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Master_Pol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Master_Pol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Master_Pol] SET ARITHABORT OFF 
GO
ALTER DATABASE [Master_Pol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Master_Pol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Master_Pol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Master_Pol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Master_Pol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Master_Pol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Master_Pol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Master_Pol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Master_Pol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Master_Pol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Master_Pol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Master_Pol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Master_Pol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Master_Pol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Master_Pol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Master_Pol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Master_Pol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Master_Pol] SET RECOVERY FULL 
GO
ALTER DATABASE [Master_Pol] SET  MULTI_USER 
GO
ALTER DATABASE [Master_Pol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Master_Pol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Master_Pol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Master_Pol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Master_Pol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Master_Pol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Master_Pol', N'ON'
GO
ALTER DATABASE [Master_Pol] SET QUERY_STORE = OFF
GO
USE [Master_Pol]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18.11.2024 16:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Count] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Companyid] [int] NOT NULL,
	[Lastname] [nvarchar](200) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Surname] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[Index] [nvarchar](50) NOT NULL,
	[Region] [int] NOT NULL,
	[City] [int] NOT NULL,
	[Street] [int] NOT NULL,
	[Building] [int] NOT NULL,
	[INN] [nvarchar](50) NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerCompany]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerCompany](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_PartnerCompany] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[NameId] [int] NOT NULL,
	[MinCost] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[PercentageOfFault] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 18.11.2024 16:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [Name]) VALUES (1, N'Приморск')
INSERT [dbo].[City] ([id], [Name]) VALUES (2, N'Реутов')
INSERT [dbo].[City] ([id], [Name]) VALUES (3, N'Северодвинск')
INSERT [dbo].[City] ([id], [Name]) VALUES (4, N'Старый Оскол')
INSERT [dbo].[City] ([id], [Name]) VALUES (5, N'Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (1, 4, 1, N'15500', CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (2, 2, 1, N'12350', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (3, 3, 1, N'37400', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (4, 1, 3, N'35000', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (5, 5, 3, N'1250', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (6, 2, 3, N'1000', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (7, 4, 3, N'7550', CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (8, 4, 5, N'7250', CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (9, 1, 5, N'2500', CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (10, 3, 4, N'59050', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (11, 2, 4, N'37200', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (12, 5, 4, N'4500', CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (13, 2, 2, N'50000', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (14, 3, 2, N'670000', CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (15, 4, 2, N'35000', CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Order] ([id], [ProductId], [CompanyId], [Count], [Date]) VALUES (16, 1, 2, N'25000', CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([id], [TypeId], [Companyid], [Lastname], [Name], [Surname], [Email], [Phone], [Index], [Region], [City], [Street], [Building], [INN], [Rating]) VALUES (1, 1, 1, N'Иванова', N'Александра', N'Ивановна', N'aleksandraivanova@ml.ru', N'4931234567', N'652050', 3, 5, 1, 15, N'2222455179', 7)
INSERT [dbo].[Partner] ([id], [TypeId], [Companyid], [Lastname], [Name], [Surname], [Email], [Phone], [Index], [Region], [City], [Street], [Building], [INN], [Rating]) VALUES (2, 3, 3, N'Петров', N'Василий', N'Петрович', N'vppetrov@vl.ru', N'9871235678', N'164500', 1, 3, 5, 18, N'3333888520', 7)
INSERT [dbo].[Partner] ([id], [TypeId], [Companyid], [Lastname], [Name], [Surname], [Email], [Phone], [Index], [Region], [City], [Street], [Building], [INN], [Rating]) VALUES (3, 4, 5, N'Соловьев', N'Андрей', N'Николаевич', N'ansolovev@st.ru', N'8122233200', N'188910', 4, 1, 2, 21, N'4440391035', 7)
INSERT [dbo].[Partner] ([id], [TypeId], [Companyid], [Lastname], [Name], [Surname], [Email], [Phone], [Index], [Region], [City], [Street], [Building], [INN], [Rating]) VALUES (4, 2, 4, N'Воробьева', N'Екатерина', N'Валерьевна', N'ekaterina.vorobeva@ml.ru', N'4442223311', N'143960', 5, 2, 4, 51, N'1111520857', 5)
INSERT [dbo].[Partner] ([id], [TypeId], [Companyid], [Lastname], [Name], [Surname], [Email], [Phone], [Index], [Region], [City], [Street], [Building], [INN], [Rating]) VALUES (5, 1, 2, N'Степанов', N'Степан', N'Сергеевич', N'stepanov@stepan.ru', N'9128883333', N'309500', 2, 4, 3, 122, N'5552431140', 10)
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerCompany] ON 

INSERT [dbo].[PartnerCompany] ([id], [Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerCompany] ([id], [Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerCompany] ([id], [Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerCompany] ([id], [Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerCompany] ([id], [Name]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[PartnerCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([id], [Name]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([id], [Name]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([id], [Name]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([id], [Name]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [TypeId], [NameId], [MinCost]) VALUES (1, 3, 4, CAST(4457 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [TypeId], [NameId], [MinCost]) VALUES (2, 3, 1, CAST(7331 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [TypeId], [NameId], [MinCost]) VALUES (3, 1, 2, CAST(1799 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [TypeId], [NameId], [MinCost]) VALUES (4, 1, 3, CAST(3890 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [TypeId], [NameId], [MinCost]) VALUES (5, 4, 5, CAST(5451 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductName] ON 

INSERT [dbo].[ProductName] ([id], [Name], [Article]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958')
INSERT [dbo].[ProductName] ([id], [Name], [Article]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282')
INSERT [dbo].[ProductName] ([id], [Name], [Article]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748')
INSERT [dbo].[ProductName] ([id], [Name], [Article]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385')
INSERT [dbo].[ProductName] ([id], [Name], [Article]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543')
SET IDENTITY_INSERT [dbo].[ProductName] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([id], [Name], [PercentageOfFault]) VALUES (1, N'Ламинат', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[ProductType] ([id], [Name], [PercentageOfFault]) VALUES (2, N'Массивная доска', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[ProductType] ([id], [Name], [PercentageOfFault]) VALUES (3, N'Паркетная доска', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ProductType] ([id], [Name], [PercentageOfFault]) VALUES (4, N'Пробковое покрытие', CAST(2 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([id], [Name]) VALUES (1, N'Архангельская')
INSERT [dbo].[Region] ([id], [Name]) VALUES (2, N'Белгородская')
INSERT [dbo].[Region] ([id], [Name]) VALUES (3, N'Кемеровская')
INSERT [dbo].[Region] ([id], [Name]) VALUES (4, N'Ленинградская')
INSERT [dbo].[Region] ([id], [Name]) VALUES (5, N'Московская')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([id], [Name]) VALUES (1, N'Лесная')
INSERT [dbo].[Street] ([id], [Name]) VALUES (2, N'Парковая')
INSERT [dbo].[Street] ([id], [Name]) VALUES (3, N'Рабочая')
INSERT [dbo].[Street] ([id], [Name]) VALUES (4, N'Свободы')
INSERT [dbo].[Street] ([id], [Name]) VALUES (5, N'Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PartnerCompany] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[PartnerCompany] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PartnerCompany]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_City] FOREIGN KEY([City])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_City]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerCompany] FOREIGN KEY([Companyid])
REFERENCES [dbo].[PartnerCompany] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerCompany]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[PartnerType] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerType]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Region] FOREIGN KEY([Region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Region]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Street] FOREIGN KEY([Street])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([NameId])
REFERENCES [dbo].[ProductName] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ProductType] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
USE [master]
GO
ALTER DATABASE [Master_Pol] SET  READ_WRITE 
GO
