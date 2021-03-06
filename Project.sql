USE [master]
GO
/****** Object:  Database [Project]    Script Date: 06-Jan-20 5:40:38 PM ******/
CREATE DATABASE [Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project', FILENAME = N'C:\Users\window_7\Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_log', FILENAME = N'C:\Users\window_7\Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project] SET QUERY_STORE = OFF
GO
USE [Project]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Project]
GO
/****** Object:  Table [dbo].[tblPrice]    Script Date: 06-Jan-20 5:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PriceType] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[WinningNo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 06-Jan-20 5:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWinningNo]    Script Date: 06-Jan-20 5:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWinningNo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[WinningNo] [nvarchar](50) NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblPrice] ON 

INSERT [dbo].[tblPrice] ([id], [PriceType], [UserId], [WinningNo]) VALUES (1, N'third prize -1st winner', 3, N'3838')
INSERT [dbo].[tblPrice] ([id], [PriceType], [UserId], [WinningNo]) VALUES (2, N'third prize -2st winner', 2, N'1169')
INSERT [dbo].[tblPrice] ([id], [PriceType], [UserId], [WinningNo]) VALUES (3, N'third prize -3st winner', NULL, NULL)
INSERT [dbo].[tblPrice] ([id], [PriceType], [UserId], [WinningNo]) VALUES (4, N'second prize -1st winner', NULL, NULL)
INSERT [dbo].[tblPrice] ([id], [PriceType], [UserId], [WinningNo]) VALUES (5, N'second prize -2st winner', NULL, NULL)
INSERT [dbo].[tblPrice] ([id], [PriceType], [UserId], [WinningNo]) VALUES (6, N'first prize', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblPrice] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (1, N'admin@ucsm.com', N'wakeUPup@1')
INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (2, N'john@ucsm.com', N'wakeUPup@1')
INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (3, N'carol@ucsm.com', N'wakeUPup@1')
INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (1002, N'kenny@ucsm.com', N'wakeUPup@1')
INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (1003, N'json@ucsm.com', N'wakeUPup@1')
INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (1004, N'sean@ucsm.com', N'wakeUPup@1')
INSERT [dbo].[tblUser] ([id], [Email], [Password]) VALUES (1005, N'lisa@ucsm.com', N'wakeUPup@1')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
SET IDENTITY_INSERT [dbo].[tblWinningNo] ON 

INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (1, N'9354', 2)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (2, N'8318', 2)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (3, N'1384', 3)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (4, N'6460', 3)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (5, N'1238', 2)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (6, N'7777', 2)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (1002, N'9931', 3)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (1003, N'3050', 3)
INSERT [dbo].[tblWinningNo] ([id], [WinningNo], [UserId]) VALUES (2002, N'6386', 2)
SET IDENTITY_INSERT [dbo].[tblWinningNo] OFF
ALTER TABLE [dbo].[tblPrice]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblWinningNo]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([id])
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
