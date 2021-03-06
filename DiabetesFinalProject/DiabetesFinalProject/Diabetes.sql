USE [master]
GO
/****** Object:  Database [Diabetes]    Script Date: 1/28/2017 10:53:21 PM ******/
CREATE DATABASE [Diabetes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db', FILENAME = N'C:\Users\a4129\Desktop\PROJECTS\DiabetesFinalProject\DiabetesFinalProject\App_Data\Db.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Db_log', FILENAME = N'C:\Users\a4129\Desktop\PROJECTS\DiabetesFinalProject\DiabetesFinalProject\App_Data\Db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Diabetes] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Diabetes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Diabetes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Diabetes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Diabetes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Diabetes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Diabetes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Diabetes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Diabetes] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Diabetes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Diabetes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Diabetes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Diabetes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Diabetes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Diabetes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Diabetes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Diabetes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Diabetes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Diabetes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Diabetes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Diabetes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Diabetes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Diabetes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Diabetes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Diabetes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Diabetes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Diabetes] SET  MULTI_USER 
GO
ALTER DATABASE [Diabetes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Diabetes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Diabetes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Diabetes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Diabetes]
GO
/****** Object:  Table [dbo].[AdminDetails]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminDetails](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdminDetails] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorRegister]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorRegister](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Middlename] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](50) NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoctorRegister] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorSchedule]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorSchedule](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[Schedule_name] [nvarchar](50) NOT NULL,
	[Schedule_from] [datetime] NOT NULL,
	[Schedule_to] [datetime] NOT NULL,
	[Monday] [nvarchar](max) NULL,
	[Tuesday] [nvarchar](max) NULL,
	[Wednesday] [nvarchar](max) NULL,
	[Thursday] [nvarchar](max) NULL,
	[Friday] [nvarchar](max) NULL,
	[Saturday] [nvarchar](max) NULL,
	[Sunday] [nvarchar](max) NULL,
	[Others] [nvarchar](max) NULL,
	[PatientId] [int] NULL,
	[DoctorId] [int] NULL,
 CONSTRAINT [PK_DoctorSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientDoctor]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDoctor](
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
 CONSTRAINT [PK_PatientDoctor] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientRegister]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientRegister](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Middlename] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[DateOfBirt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientReport]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientReport](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[WeightLoss] [nvarchar](50) NOT NULL,
	[MoreThirsty] [nvarchar](50) NOT NULL,
	[FeelingHungry] [nvarchar](50) NOT NULL,
	[BlurryVision] [nvarchar](50) NOT NULL,
	[OrganFail] [nvarchar](50) NOT NULL,
	[FatherMother] [nvarchar](50) NOT NULL,
	[Cholestrol] [nvarchar](50) NOT NULL,
	[Ldl] [nvarchar](50) NOT NULL,
	[Hdl] [nvarchar](50) NOT NULL,
	[Vldl] [nvarchar](50) NOT NULL,
	[Trigl] [nvarchar](50) NOT NULL,
	[Others] [nvarchar](max) NULL,
	[PatientId] [int] NULL,
	[ReportDate] [date] NULL,
 CONSTRAINT [PK_PatientReport] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientSpecialist]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientSpecialist](
	[PatientId] [int] NOT NULL,
	[SpecialistId] [int] NOT NULL,
 CONSTRAINT [PK_PatientSpecialist] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialistRegister]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialistRegister](
	[SpecialistId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Middlename] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](50) NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SpecialistRegister] PRIMARY KEY CLUSTERED 
(
	[SpecialistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialistSchedule]    Script Date: 1/28/2017 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialistSchedule](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[Schedule_name] [nvarchar](50) NOT NULL,
	[Schedule_from] [datetime] NOT NULL,
	[Schedule_to] [datetime] NOT NULL,
	[Monday] [nvarchar](max) NOT NULL,
	[Tuesday] [nvarchar](max) NOT NULL,
	[Wednesday] [nvarchar](max) NOT NULL,
	[Thursday] [nvarchar](max) NOT NULL,
	[Friday] [nvarchar](max) NOT NULL,
	[Saturday] [nvarchar](max) NOT NULL,
	[Sunday] [nvarchar](max) NOT NULL,
	[Others] [nvarchar](max) NOT NULL,
	[PatientId] [int] NOT NULL,
	[SpecialistId] [int] NOT NULL,
 CONSTRAINT [PK_SpecialistSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AdminDetails] ON 

INSERT [dbo].[AdminDetails] ([AdminId], [AdminName], [UserName], [Password]) VALUES (1, N'Admin', N'admin', N'password')
SET IDENTITY_INSERT [dbo].[AdminDetails] OFF
USE [master]
GO
ALTER DATABASE [Diabetes] SET  READ_WRITE 
GO
