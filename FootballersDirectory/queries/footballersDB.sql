USE [master]
GO
/****** Object:  Database [Footballers]    Script Date: 04.02.2021 14:28:54 ******/
CREATE DATABASE [Footballers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Footballers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Footballers.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Footballers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Footballers.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Footballers] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Footballers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Footballers] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Footballers] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Footballers] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Footballers] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Footballers] SET ARITHABORT ON 
GO
ALTER DATABASE [Footballers] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Footballers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Footballers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Footballers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Footballers] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Footballers] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Footballers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Footballers] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Footballers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Footballers] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Footballers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Footballers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Footballers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Footballers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Footballers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Footballers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Footballers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Footballers] SET RECOVERY FULL 
GO
ALTER DATABASE [Footballers] SET  MULTI_USER 
GO
ALTER DATABASE [Footballers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Footballers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Footballers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Footballers] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Footballers] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Footballers] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Footballers] SET QUERY_STORE = OFF
GO
USE [Footballers]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 04.02.2021 14:28:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Surname] [varchar](100) NOT NULL,
	[Sex] [varchar](20) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[TeamName] [varchar](100) NOT NULL,
	[Country] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (25, N'Антон', N'Сергеев', N'женский', CAST(N'1990-03-03' AS Date), N'Рома', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (1, N'Артём', N'Дзюба', N'мужской', CAST(N'1988-08-04' AS Date), N'Зенит', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (34, N'Артём', N'Иванов', N'мужской', CAST(N'1988-08-04' AS Date), N'Урал', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (38, N'Артём', N'Кузнецов', N'женский', CAST(N'1233-02-12' AS Date), N'Арсенал', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (35, N'Артём', N'Кузнецов', N'женский', CAST(N'1993-07-06' AS Date), N'Арсенал', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (33, N'Артём', N'Кузнецов', N'мужской', CAST(N'1988-08-04' AS Date), N'Зенит', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (36, N'Артём', N'Петров', N'женский', CAST(N'1899-01-01' AS Date), N'Арсенал', N'США')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (31, N'Артём', N'Петров', N'мужской', CAST(N'1987-07-11' AS Date), N'Зенит', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (37, N'Артём', N'Петров', N'мужской', CAST(N'1988-08-04' AS Date), N'Зенит', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (6, N'Дмитрий', N'Иванов', N'мужской', CAST(N'2021-01-01' AS Date), N'ЦСКА', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (7, N'Дмитрий', N'Петров', N'мужской', CAST(N'2021-01-13' AS Date), N'Спартак', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (11, N'Иван', N'Иванов', N'мужской', CAST(N'2020-10-01' AS Date), N'Челси', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (23, N'Иван', N'Петров', N'мужской', CAST(N'2021-02-18' AS Date), N'Рома', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (2, N'Лэндон', N'Донован', N'мужской', CAST(N'1982-03-04' AS Date), N'Сан-Диего Лойал', N'США')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (4, N'Меган', N'Рапино', N'женский', CAST(N'1985-07-05' AS Date), N'Сиэтл Рейн', N'США')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (32, N'Никита', N'Кузнецов', N'мужской', CAST(N'1995-12-07' AS Date), N'Спартак', N'США')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (26, N'Пётр', N'Иванов', N'мужской', CAST(N'2003-02-03' AS Date), N'Арсенал', N'Россия')
INSERT [dbo].[Players] ([Id], [Name], [Surname], [Sex], [BirthDate], [TeamName], [Country]) VALUES (3, N'Чиро', N'Иммобиле', N'мужской', CAST(N'1990-02-20' AS Date), N'Лацио', N'Италия')
SET IDENTITY_INSERT [dbo].[Players] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc]    Script Date: 04.02.2021 14:28:54 ******/
ALTER TABLE [dbo].[Players] ADD  CONSTRAINT [uc] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[Surname] ASC,
	[Sex] ASC,
	[BirthDate] ASC,
	[TeamName] ASC,
	[Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Footballers] SET  READ_WRITE 
GO
