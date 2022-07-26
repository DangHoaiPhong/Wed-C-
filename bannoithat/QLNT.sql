USE [QLNT]
GO
ALTER TABLE [dbo].[NOITHAT] DROP CONSTRAINT [CK__NOITHAT__Giaban__182C9B23]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] DROP CONSTRAINT [CK__CHITIETDO__Soluo__1FCDBCEB]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] DROP CONSTRAINT [CK__CHITIETDO__Dongi__20C1E124]
GO
ALTER TABLE [dbo].[NOITHAT] DROP CONSTRAINT [FK_SP]
GO
ALTER TABLE [dbo].[NOITHAT] DROP CONSTRAINT [FK_Phong]
GO
ALTER TABLE [dbo].[DONDATHANG] DROP CONSTRAINT [FK_Khachhang]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] DROP CONSTRAINT [FK_NoiThat]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] DROP CONSTRAINT [FK_Donhang]
GO
/****** Object:  Index [UQ__LIENHE__A9D10534AFFD1CDD]    Script Date: 7/26/2021 3:58:03 PM ******/
ALTER TABLE [dbo].[LIENHE] DROP CONSTRAINT [UQ__LIENHE__A9D10534AFFD1CDD]
GO
/****** Object:  Index [UQ__KHACHHAN__A9D105344775CAF4]    Script Date: 7/26/2021 3:58:03 PM ******/
ALTER TABLE [dbo].[KHACHHANG] DROP CONSTRAINT [UQ__KHACHHAN__A9D105344775CAF4]
GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64FCF307D4A]    Script Date: 7/26/2021 3:58:03 PM ******/
ALTER TABLE [dbo].[KHACHHANG] DROP CONSTRAINT [UQ__KHACHHAN__7FB3F64FCF307D4A]
GO
/****** Object:  Table [dbo].[NOITHAT]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[NOITHAT]
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[LOAISP]
GO
/****** Object:  Table [dbo].[LOAIPHONG]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[LOAIPHONG]
GO
/****** Object:  Table [dbo].[LIENHE]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[LIENHE]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[KHACHHANG]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[DONDATHANG]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[CHITIETDONTHANG]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP TABLE [dbo].[Admin]
GO
USE [master]
GO
/****** Object:  Database [QLNT]    Script Date: 7/26/2021 3:58:03 PM ******/
DROP DATABASE [QLNT]
GO
/****** Object:  Database [QLNT]    Script Date: 7/26/2021 3:58:03 PM ******/
CREATE DATABASE [QLNT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLNT.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLNT_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLNT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLNT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNT] SET  MULTI_USER 
GO
ALTER DATABASE [QLNT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLNT] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLNT]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaNoiThat] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaNoiThat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
	[DCNhan] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Diachi] [nvarchar](max) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIENHE]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIENHE](
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Email] [varchar](100) NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[MaLienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIPHONG]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHONG](
	[MaLoaiPhong] [int] NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MaLoaiSP] [int] NOT NULL,
	[TenLoaiSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NOITHAT]    Script Date: 7/26/2021 3:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NOITHAT](
	[MaNoiThat] [int] IDENTITY(1,1) NOT NULL,
	[TenNoiThat] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[MaLoaiPhong] [int] NULL,
 CONSTRAINT [PK_NoiThat] PRIMARY KEY CLUSTERED 
(
	[MaNoiThat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [HoTen]) VALUES (N'admin', N'12345', N'Nguyễn Thanh Phong')
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [HoTen]) VALUES (N'user', N'54321', N'Nguyễn Thanh Thiên')
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaNoiThat], [Soluong], [Dongia]) VALUES (1, 20, 2, CAST(7500000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaNoiThat], [Soluong], [Dongia]) VALUES (2, 20, 1, CAST(7500000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaNoiThat], [Soluong], [Dongia]) VALUES (3, 20, 1, CAST(7500000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaNoiThat], [Soluong], [Dongia]) VALUES (4, 38, 1, CAST(17000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaNoiThat], [Soluong], [Dongia]) VALUES (5, 44, 1, CAST(3500000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaNoiThat], [Soluong], [Dongia]) VALUES (6, 44, 1, CAST(3500000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH], [DCNhan]) VALUES (1, 0, 0, CAST(N'2021-07-16 11:01:41.493' AS DateTime), CAST(N'2021-08-03 00:00:00.000' AS DateTime), 5, N'Bình Tân')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH], [DCNhan]) VALUES (2, 0, 0, CAST(N'2021-07-16 11:06:45.973' AS DateTime), CAST(N'2021-08-04 00:00:00.000' AS DateTime), 5, N'Bình Tân')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH], [DCNhan]) VALUES (3, 0, 0, CAST(N'2021-07-23 14:42:14.560' AS DateTime), CAST(N'2021-08-04 00:00:00.000' AS DateTime), 5, N'ádasdsaadasdad')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH], [DCNhan]) VALUES (4, 0, 0, CAST(N'2021-07-24 17:01:03.840' AS DateTime), CAST(N'2021-07-28 00:00:00.000' AS DateTime), 8, N'')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH], [DCNhan]) VALUES (5, 0, 0, CAST(N'2021-07-24 17:58:21.603' AS DateTime), CAST(N'2021-07-29 00:00:00.000' AS DateTime), 8, N'')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH], [DCNhan]) VALUES (6, 0, 0, CAST(N'2021-07-24 19:23:24.203' AS DateTime), CAST(N'2021-07-27 00:00:00.000' AS DateTime), 9, NULL)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (1, N'Nguyễn thanh phong', N'phong123', N'123', N'nguyenthanhphong7621@gmail.com', N'0352627621', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (2, N'Nguyễn thanh thiên', N'thien123', N'321', N'thanhthien@gmail.com', N'0352627621', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (3, N'Đặng hoài phong', N'phongmap123', N'123', N'hoaiphong@gmail.com', N'0352627621', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (4, N'Nguyễn trọng hoàng tân', N'tanmap123', N'312', N'hoangtan@gmail.com', N'0352627621', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (5, N'Thien', N'Dev', N'123', N'Dev@gmail.com', N'09455855621', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (6, N'Phong', N'Phongg', N'111', N'PhongG@gmail.com', N'094132135231', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (7, N'Tân Hoàng', N'Tan', N'123', N'Tan@gmail.com', N'015863175', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (8, N'Nguyễn Thiên', N'Dell', N'118', N'tn789237@gmail.com', N'0941615312', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DienthoaiKH], [Diachi]) VALUES (9, N'Nguyễn Thanh Thiên', N'Pen', N'111', N'taccaz123@gmail.com', N'0941615312', N'Tân Bình, TP. HCM')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LIENHE] ON 

INSERT [dbo].[LIENHE] ([MaLienHe], [NoiDung], [Email], [HoTen]) VALUES (0, N'sádadasdada', N'ajskaj@gmail.com', N'Phong')
INSERT [dbo].[LIENHE] ([MaLienHe], [NoiDung], [Email], [HoTen]) VALUES (1, N'sản phẩm tốt', N'tan@gmail.com', N'Tân')
SET IDENTITY_INSERT [dbo].[LIENHE] OFF
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (1, N'Phòng Ngủ')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (2, N'Phòng Khách')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Giường ')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Tủ ')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'bàn ')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Ghế sofa')
SET IDENTITY_INSERT [dbo].[NOITHAT] ON 

INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (3, N'Giường Ngủ Kiểu Pháp', CAST(20000000 AS Decimal(18, 0)), N'size 2mx3m', N'12.jpg', CAST(N'2021-07-28 00:00:00.000' AS DateTime), 3, 1, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (6, N'Giường Ngủ Đa Năng', CAST(13000000 AS Decimal(18, 0)), N'size 2mx3m', N'13.jpg', CAST(N'2021-07-29 00:00:00.000' AS DateTime), 3, 1, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (7, N'Giường Ngủ Châu Âu', CAST(16000000 AS Decimal(18, 0)), N'size 2mx3m', N'17.jpg', CAST(N'2021-08-02 00:00:00.000' AS DateTime), 3, 1, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (8, N'Ghế Sofa Đen ', CAST(15000000 AS Decimal(18, 0)), N'size 2mx3m', N'40.png', CAST(N'2021-07-04 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (9, N'Ghế Sofa Xám', CAST(16000000 AS Decimal(18, 0)), N'size 2mx3m', N'44.png', CAST(N'2021-07-02 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (10, N'Ghế Sofa Xám Đậm', CAST(16000000 AS Decimal(18, 0)), N'size 2mx3m', N'47.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (11, N'Ghế Sofa Xám Ghi', CAST(17000000 AS Decimal(18, 0)), N'size 2mx3m', N'50.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (12, N'Ghế Sofa Hồng', CAST(14000000 AS Decimal(18, 0)), N'size 2mx3m', N'53.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (13, N'Ghế Sofa Chữ L Xám', CAST(18000000 AS Decimal(18, 0)), N'size 2mx3m', N'57.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (14, N'Ghế Sofa Đơn Xanh Dương Đậm', CAST(10000000 AS Decimal(18, 0)), N'size 2mx3m', N'65.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (15, N'Ghế Sofa Chữ L Xám Đậm', CAST(16000000 AS Decimal(18, 0)), N'size 2mx3m', N'85.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (16, N'Ghế Sofa Chữ L Cam Nâu', CAST(14000000 AS Decimal(18, 0)), N'size 2mx3m', N'164.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (17, N'Ghế Chữ L Xám Nhạt', CAST(18000000 AS Decimal(18, 0)), N'size 2mx3m', N'165.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 4, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (18, N'Tủ 3 Tầng', CAST(15500000 AS Decimal(18, 0)), N'3 tầng', N'tu20.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (19, N'Tủ Đen Để Đầu Giường', CAST(9000000 AS Decimal(18, 0)), N'1m x 2m', N'tu2.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 4, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (20, N'Tủ Gỗ', CAST(7500000 AS Decimal(18, 0)), N'1m x 2m', N'tu12.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (21, N'Tủ Đen Cổ Điển', CAST(10000000 AS Decimal(18, 0)), N'1m x 2m', N'tu19.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 5, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (22, N'Tủ Gỗ Kê TV', CAST(12000000 AS Decimal(18, 0)), N'1m x 3m', N'tu16.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 1, 2, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (23, N'Tủ Nhỏ Tiện Lợi', CAST(6500000 AS Decimal(18, 0)), N'1m x 2m', N'tu18.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (24, N'Tủ Trắng Nhiều Ngăn', CAST(15000000 AS Decimal(18, 0)), N'1m x 2m', N'tu17.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 1, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (25, N'Tủ 2 Ngăn', CAST(5000000 AS Decimal(18, 0)), N'1m x 2m', N'tu15.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (26, N'Tủ Trắng Kê TV', CAST(20000000 AS Decimal(18, 0)), N'1m x 3m', N'tu14.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 2, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (27, N'Tủ Trắng Nhỏ', CAST(9000000 AS Decimal(18, 0)), N'1m x 2m', N'tu13.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 4, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (28, N'Tủ Đầu Giường Đa Dụng', CAST(12000000 AS Decimal(18, 0)), N'1m x 2m', N'tu11.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (29, N'Bàn Đen Tam Giác', CAST(9000000 AS Decimal(18, 0)), N'1m x 2m', N'ban48.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (30, N'Bàn Tròn Nhỏ', CAST(5000000 AS Decimal(18, 0)), N'1m x 2m', N'ban47.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (31, N'Bàn Tròn Cao', CAST(6500000 AS Decimal(18, 0)), N'1m x 2m', N'ban46.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 4, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (32, N'Bàn Gỗ', CAST(7500000 AS Decimal(18, 0)), N'1m x 2m', N'ban45.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 3, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (33, N'Bàn Tròn', CAST(6550000 AS Decimal(18, 0)), N'2m x 2m', N'ban40.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (34, N'Bàn Gỗ Tam Giác', CAST(9000000 AS Decimal(18, 0)), N'1m x 2m', N'ban37.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (35, N'Bàn Lồng', CAST(8500000 AS Decimal(18, 0)), N'1m x 2m', N'ban33.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 5, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (36, N'Bàn Vuông', CAST(7550000 AS Decimal(18, 0)), N'1m x 2m', N'ban5.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 4, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (37, N'Bàn Ăn Tích Hợp', CAST(9500000 AS Decimal(18, 0)), N'1m x 2m', N'ban14.png', CAST(N'1900-01-01 00:00:00.000' AS DateTime), 2, 3, 2)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (38, N'Tủ Sang Trọng', CAST(17000000 AS Decimal(18, 0)), N'Tủ cao cấp', N'26.jpg', CAST(N'2021-06-29 00:00:00.000' AS DateTime), 3, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (41, N'Tủ mới', CAST(16000000 AS Decimal(18, 0)), N'Tủ lich lãm', N'22.jpg', CAST(N'2021-07-29 00:00:00.000' AS DateTime), 2, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (44, N'Tủ Xếp', CAST(3500000 AS Decimal(18, 0)), N'tủ xếp', N'2.jpg', CAST(N'2021-07-31 00:00:00.000' AS DateTime), 3, 2, 1)
INSERT [dbo].[NOITHAT] ([MaNoiThat], [TenNoiThat], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiSP], [MaLoaiPhong]) VALUES (45, N'Bàn đá ', CAST(7500000 AS Decimal(18, 0)), N'Bàn đá đẹp', N'yeuthic.jpg', CAST(N'2021-06-29 00:00:00.000' AS DateTime), 3, 3, 2)
SET IDENTITY_INSERT [dbo].[NOITHAT] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64FCF307D4A]    Script Date: 7/26/2021 3:58:03 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D105344775CAF4]    Script Date: 7/26/2021 3:58:03 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__LIENHE__A9D10534AFFD1CDD]    Script Date: 7/26/2021 3:58:03 PM ******/
ALTER TABLE [dbo].[LIENHE] ADD  CONSTRAINT [UQ__LIENHE__A9D10534AFFD1CDD] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_Donhang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_Donhang]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_NoiThat] FOREIGN KEY([MaNoiThat])
REFERENCES [dbo].[NOITHAT] ([MaNoiThat])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_NoiThat]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_Khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_Khachhang]
GO
ALTER TABLE [dbo].[NOITHAT]  WITH CHECK ADD  CONSTRAINT [FK_Phong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAIPHONG] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[NOITHAT] CHECK CONSTRAINT [FK_Phong]
GO
ALTER TABLE [dbo].[NOITHAT]  WITH CHECK ADD  CONSTRAINT [FK_SP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LOAISP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[NOITHAT] CHECK CONSTRAINT [FK_SP]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[NOITHAT]  WITH CHECK ADD  CONSTRAINT [CK__NOITHAT__Giaban__182C9B23] CHECK  (([Giaban]>=(0)))
GO
ALTER TABLE [dbo].[NOITHAT] CHECK CONSTRAINT [CK__NOITHAT__Giaban__182C9B23]
GO
USE [master]
GO
ALTER DATABASE [QLNT] SET  READ_WRITE 
GO
