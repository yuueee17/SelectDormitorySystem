USE [master]
GO
/****** Object:  Database [SelectDormitory]    Script Date: 2024/10/20 12:01:59 ******/
CREATE DATABASE [SelectDormitory]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SelectDormitory', FILENAME = N'E:\SQL server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SelectDormitory.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SelectDormitory_log', FILENAME = N'E:\SQL server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SelectDormitory_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SelectDormitory] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SelectDormitory].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SelectDormitory] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SelectDormitory] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SelectDormitory] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SelectDormitory] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SelectDormitory] SET ARITHABORT OFF 
GO
ALTER DATABASE [SelectDormitory] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SelectDormitory] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SelectDormitory] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SelectDormitory] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SelectDormitory] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SelectDormitory] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SelectDormitory] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SelectDormitory] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SelectDormitory] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SelectDormitory] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SelectDormitory] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SelectDormitory] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SelectDormitory] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SelectDormitory] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SelectDormitory] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SelectDormitory] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SelectDormitory] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SelectDormitory] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SelectDormitory] SET  MULTI_USER 
GO
ALTER DATABASE [SelectDormitory] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SelectDormitory] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SelectDormitory] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SelectDormitory] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SelectDormitory] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SelectDormitory] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SelectDormitory] SET QUERY_STORE = ON
GO
ALTER DATABASE [SelectDormitory] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SelectDormitory]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [nchar](20) NULL,
	[Password] [nchar](20) NULL,
	[model] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuildingName]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingName](
	[BuildingId] [int] NULL,
	[Name] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distribute]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribute](
	[DormitoryBuilding] [int] NULL,
	[DormitoryNumberBegin] [int] NULL,
	[DormitoryNumberEnd] [int] NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Major] [nvarchar](20) NOT NULL,
	[Sleep] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DorName]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DorName](
	[Id] [int] NULL,
	[DorName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DorNum]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DorNum](
	[DormitoryNumber] [int] NULL,
	[DormitoryBuilding] [int] NULL,
	[Bed1] [nvarchar](10) NULL,
	[Bed2] [nvarchar](10) NULL,
	[Bed3] [nvarchar](10) NULL,
	[Bed4] [nvarchar](10) NULL,
	[Num] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[Id] [nvarchar](20) NULL,
	[Name] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2024/10/20 12:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Major] [nvarchar](20) NOT NULL,
	[Sleep] [nvarchar](10) NULL,
	[DormitoryBuilding] [int] NULL,
	[DormitoryNumber] [int] NULL,
	[DormitoryBed] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SelectDormitory] SET  READ_WRITE 
GO
