USE [master]
GO
/****** Object:  Database [BD]    Script Date: 06/06/2020 10:01:52 p. m. ******/
CREATE DATABASE [BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD] SET RECOVERY FULL 
GO
ALTER DATABASE [BD] SET  MULTI_USER 
GO
ALTER DATABASE [BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD', N'ON'
GO
ALTER DATABASE [BD] SET QUERY_STORE = OFF
GO
USE [BD]
GO
/****** Object:  Table [dbo].[DEPARTAMENTOS]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTOS](
	[id] [int] NULL,
	[nombre_departamento] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HABITANTES]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABITANTES](
	[id] [int] NULL,
	[nombre] [varchar](255) NULL,
	[genero] [varchar](255) NULL,
	[ingreso] [float] NULL,
	[id_departamento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vWHABITANTESPORDEPARTAMENTO]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vWHABITANTESPORDEPARTAMENTO]
AS
SELECT DEPARTAMENTOS.nombre_departamento, nombre, genero
FROM HABITANTES
JOIN DEPARTAMENTOS
ON HABITANTES.id_departamento = DEPARTAMENTOS.id
GO
/****** Object:  View [dbo].[vWVISTA2]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWVISTA2]
AS
SELECT HABITANTES.nombre, DEPARTAMENTOS.id 
FROM HABITANTES
INNER JOIN DEPARTAMENTOS ON HABITANTES.id=DEPARTAMENTOS.id
;
GO
/****** Object:  Table [dbo].[HABITANTES2]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABITANTES2](
	[id] [int] NULL,
	[nombre] [varchar](255) NULL,
	[genero] [varchar](255) NULL,
	[ingreso] [float] NULL,
	[id_departamento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vWVISTA3]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWVISTA3]
AS
SELECT HABITANTES.id, HABITANTES.nombre
FROM HABITANTES
LEFT JOIN HABITANTES2
ON HABITANTES.id_departamento=HABITANTES2.id_departamento;
GO
/****** Object:  View [dbo].[vWVISTA4]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWVISTA4]
AS
SELECT HABITANTES2.id, HABITANTES.nombre
FROM HABITANTES RIGHT JOIN HABITANTES2
ON HABITANTES.id=HABITANTES2.id;
GO
/****** Object:  View [dbo].[vWVISTA5]    Script Date: 06/06/2020 10:01:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWVISTA5]
AS
SELECT HABITANTES.nombre
FROM HABITANTES
INNER JOIN HABITANTES2
ON HABITANTES.id=HABITANTES.id;
GO
INSERT [dbo].[DEPARTAMENTOS] ([id], [nombre_departamento]) VALUES (1, N'Admin')
INSERT [dbo].[DEPARTAMENTOS] ([id], [nombre_departamento]) VALUES (2, N'AB')
INSERT [dbo].[DEPARTAMENTOS] ([id], [nombre_departamento]) VALUES (3, N'DB')
INSERT [dbo].[DEPARTAMENTOS] ([id], [nombre_departamento]) VALUES (4, N'LS')
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (1, N'Ricardo', N'Hombre', 20000, 2)
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (2, N'Gerardo', N'Hombre', 15000, 3)
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (3, N'Monica', N'Mujer', 16000, 2)
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (4, N'Claudia', N'Mujer', 18000, 4)
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (5, N'Juan', N'Hombre', 19000, 4)
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (6, N'Diego', N'Hombre', 17500, 2)
INSERT [dbo].[HABITANTES] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (7, N'Gabriela', N'Mujer', 24000, 3)
INSERT [dbo].[HABITANTES2] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (1, N'Gabriela', N'Mujer', 20000, 3)
INSERT [dbo].[HABITANTES2] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (2, N'Matias', N'Hombre', 8000, 2)
INSERT [dbo].[HABITANTES2] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (3, N'Eduardo', N'Hombre', 23000, 2)
INSERT [dbo].[HABITANTES2] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (4, N'Fabiola', N'Mujer', 24400, 4)
INSERT [dbo].[HABITANTES2] ([id], [nombre], [genero], [ingreso], [id_departamento]) VALUES (5, N'Erika', N'Mujer', 12000, 3)
USE [master]
GO
ALTER DATABASE [BD] SET  READ_WRITE 
GO
