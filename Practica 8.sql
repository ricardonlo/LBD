USE [master]
GO
/****** Object:  Database [TIENDA]    Script Date: 06/06/2020 06:25:26 p. m. ******/
CREATE DATABASE [TIENDA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TIENDA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TIENDA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TIENDA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TIENDA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TIENDA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TIENDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TIENDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TIENDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TIENDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TIENDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TIENDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [TIENDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TIENDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TIENDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TIENDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TIENDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TIENDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TIENDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TIENDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TIENDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TIENDA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TIENDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TIENDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TIENDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TIENDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TIENDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TIENDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TIENDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TIENDA] SET RECOVERY FULL 
GO
ALTER DATABASE [TIENDA] SET  MULTI_USER 
GO
ALTER DATABASE [TIENDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TIENDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TIENDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TIENDA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TIENDA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TIENDA', N'ON'
GO
ALTER DATABASE [TIENDA] SET QUERY_STORE = OFF
GO
USE [TIENDA]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 06/06/2020 06:25:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[Codigo] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Apellido] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FRUTAS]    Script Date: 06/06/2020 06:25:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FRUTAS](
	[Codigo] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Pasillo] [int] NULL,
	[Unidades_disponibles] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROMEDIO]    Script Date: 06/06/2020 06:25:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMEDIO](
	[Promedio_disponibles] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 06/06/2020 06:25:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[Codigo] [int] NULL,
	[Ganancia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VERDURAS]    Script Date: 06/06/2020 06:25:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VERDURAS](
	[Codigo] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Pasillo] [int] NULL,
	[Unidades_disponibles] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (1, N'Manzana', 3, 600)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (2, N'Plantano', 3, 800)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (3, N'Pera', 3, 700)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (6, N'Guayaba', 4, 500)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (8, N'Uva', 3, 600)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (9, N'Sandia', 3, 600)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (12, N'Papaya', 4, 600)
INSERT [dbo].[FRUTAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (13, N'Fresas', 3, 600)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (2, N'Tomate', 5, 600)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (4, N'Cebolla', 4, 800)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (5, N'Papa', 5, 700)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (6, N'Zanahoria', 4, 500)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (7, N'Lechuga', 5, 600)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (9, N'Apio', 5, 600)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (10, N'Chile Ancho', 4, 600)
INSERT [dbo].[VERDURAS] ([Codigo], [Nombre], [Pasillo], [Unidades_disponibles]) VALUES (11, N'Chille Morron', 3, 600)
USE [master]
GO
ALTER DATABASE [TIENDA] SET  READ_WRITE 
GO
