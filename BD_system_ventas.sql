USE [master]
GO
/****** Object:  Database [system_ventas]    Script Date: 10/12/2018 09:41:20 a. m. ******/
CREATE DATABASE [system_ventas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'system_ventas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\system_ventas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'system_ventas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\system_ventas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [system_ventas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [system_ventas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [system_ventas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [system_ventas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [system_ventas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [system_ventas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [system_ventas] SET ARITHABORT OFF 
GO
ALTER DATABASE [system_ventas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [system_ventas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [system_ventas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [system_ventas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [system_ventas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [system_ventas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [system_ventas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [system_ventas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [system_ventas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [system_ventas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [system_ventas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [system_ventas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [system_ventas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [system_ventas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [system_ventas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [system_ventas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [system_ventas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [system_ventas] SET RECOVERY FULL 
GO
ALTER DATABASE [system_ventas] SET  MULTI_USER 
GO
ALTER DATABASE [system_ventas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [system_ventas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [system_ventas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [system_ventas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [system_ventas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'system_ventas', N'ON'
GO
ALTER DATABASE [system_ventas] SET QUERY_STORE = OFF
GO
USE [system_ventas]
GO
/****** Object:  Table [dbo].[cajas]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajas](
	[idCaja] [int] IDENTITY(1,1) NOT NULL,
	[Caja] [int] NULL,
	[Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_cajas] PRIMARY KEY CLUSTERED 
(
	[idCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cajas_registros]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajas_registros](
	[IdCajaTempo] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[IdCaja] [int] NULL,
	[Caja] [int] NULL,
	[Estado] [tinyint] NULL,
	[Hora] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL,
 CONSTRAINT [PK_cajas_registros] PRIMARY KEY CLUSTERED 
(
	[IdCajaTempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Proveedor] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportes_clientes]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportes_clientes](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[SaldoActual] [varchar](50) NULL,
	[FechaActual] [varchar](50) NULL,
	[UltimoPago] [varchar](50) NULL,
	[FechaPago] [varchar](50) NULL,
	[ID] [varchar](50) NULL,
 CONSTRAINT [PK_reportes_clientes] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportes_proveedores]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportes_proveedores](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NULL,
	[SaldoActual] [varchar](50) NULL,
	[FechaActual] [varchar](50) NULL,
	[UltimoPago] [varchar](50) NULL,
	[FechaPago] [varchar](50) NULL,
 CONSTRAINT [PK_reportes_proveedores] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 10/12/2018 09:41:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](250) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [system_ventas] SET  READ_WRITE 
GO
