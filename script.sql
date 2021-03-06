USE [master]
GO
/****** Object:  Database [Demodb]    Script Date: 10/4/2020 11:43:17 PM ******/
CREATE DATABASE [Demodb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demodb', FILENAME = N'/var/opt/mssql/data/Demodb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demodb_log', FILENAME = N'/var/opt/mssql/data/Demodb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Demodb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demodb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demodb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demodb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demodb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demodb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demodb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demodb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demodb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demodb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demodb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demodb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demodb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demodb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demodb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demodb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demodb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demodb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demodb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demodb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demodb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demodb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demodb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demodb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demodb] SET RECOVERY FULL 
GO
ALTER DATABASE [Demodb] SET  MULTI_USER 
GO
ALTER DATABASE [Demodb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demodb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demodb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demodb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Demodb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demodb', N'ON'
GO
ALTER DATABASE [Demodb] SET QUERY_STORE = OFF
GO
USE [Demodb]
GO
/****** Object:  Table [dbo].[DemoTable]    Script Date: 10/4/2020 11:43:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoTable](
	[Id] [decimal](18, 0) NOT NULL,
	[Name] [varchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Age] [decimal](18, 1) NULL,
 CONSTRAINT [PK_DemoTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Demodb] SET  READ_WRITE 
GO
