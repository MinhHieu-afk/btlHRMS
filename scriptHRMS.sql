USE [master]
GO
/****** Object:  Database [QuanLyNhanSu]    Script Date: 1/21/2022 1:05:17 AM ******/
CREATE DATABASE [QuanLyNhanSu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhanSu', FILENAME = N'D:\SQL\PSQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyNhanSu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyNhanSu_log', FILENAME = N'D:\SQL\PSQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyNhanSu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyNhanSu] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhanSu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhanSu] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhanSu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhanSu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhanSu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyNhanSu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyNhanSu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyNhanSu] SET QUERY_STORE = OFF
GO
USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [varchar](50) NOT NULL,
	[TenChucVu] [nvarchar](255) NULL,
	[HeSoPhuCap] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSo]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSo](
	[MaNhanVien] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[SoDT] [char](25) NULL,
	[Email] [varchar](255) NULL,
	[NgayTuyenDung] [date] NULL,
	[MaPhongBan] [varchar](50) NULL,
	[TaiKhoan] [varchar](30) NULL,
	[MatKhau] [varchar](100) NULL,
	[Quyen] [bit] NULL,
	[XoaMem] [bit] NULL,
	[Anh] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien_ChucVu]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien_ChucVu](
	[MaNhanVien] [varchar](50) NOT NULL,
	[MaChucVu] [varchar](50) NOT NULL,
	[TuNgay] [date] NOT NULL,
	[DenNgay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaChucVu] ASC,
	[TuNgay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [varchar](50) NOT NULL,
	[TenPhongBan] [nvarchar](255) NULL,
	[NgayThanhLap] [date] NULL,
	[XoaMem] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuaTrinhCongTac]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhCongTac](
	[MaNhanVien] [varchar](50) NOT NULL,
	[TuNgay] [date] NOT NULL,
	[DenNgay] [date] NULL,
	[NoiCongTac] [nvarchar](255) NULL,
	[ChucVu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[TuNgay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoChuyenMon]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoChuyenMon](
	[MaNhanVien] [varchar](50) NOT NULL,
	[Nganh] [nvarchar](255) NOT NULL,
	[TrinhDo] [nvarchar](255) NULL,
	[LoaiHinhDaoTao] [nvarchar](255) NULL,
	[TruongDaoTao] [nvarchar](255) NULL,
 CONSTRAINT [PK__TrinhDoC__9EB2DB2928EC4E16] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[Nganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoNgoaiNgu]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoNgoaiNgu](
	[MaNhanVien] [varchar](50) NOT NULL,
	[NgoaiNgu] [varchar](255) NOT NULL,
	[TrinhDo] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[NgoaiNgu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HeSoPhuCap]) VALUES (N'1', N'Tổng giám đốc', 10)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HeSoPhuCap]) VALUES (N'2', N'Giám đốc', 8)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HeSoPhuCap]) VALUES (N'3', N'Quản Lý', 6)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HeSoPhuCap]) VALUES (N'4', N'Trưởng phòng', 5)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HeSoPhuCap]) VALUES (N'5', N'Nhân viên', 2)
GO
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'ADMIN', N'Administrator', CAST(N'2000-10-23' AS Date), 0, N'0333185986               ', N'administrator@gmail.com', CAST(N'2021-05-14' AS Date), N'PB1', N'admin', N'admin', 1, 0, N'..\..\image\hieu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00001', N'Huỳnh Trang Vân Anh', CAST(N'2001-07-04' AS Date), 1, N'0967675782               ', N'VanAnh2001@gmail.com', CAST(N'2021-05-14' AS Date), N'PB6', N'anhhtv', N'-1538749005', 0, 0, N'..\..\image\htvananh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00002', N'Lại Nguyên Chánh', CAST(N'1997-05-28' AS Date), 0, N'0966960845               ', N'Canh97@gmail.com', CAST(N'2021-05-15' AS Date), N'PB7', N'chanhln', N'-691429012', 0, 0, N'..\..\image\lainguyenchanh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00003', N'Đặng Hoài Hải', CAST(N'2000-04-07' AS Date), 0, N'0922561423               ', N'Haidang2000@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'haidh', N'-1118108653', 0, 0, N'..\..\image\danghoaihai.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00004', N'Mai Viêt Oanh', CAST(N'2003-02-05' AS Date), 1, N'01688534475              ', N'Vietoanh@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'oanhmv', N'1940539936', 0, 0, N'..\..\image\maivietoanh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00005', N'Dương Ái Hải', CAST(N'2002-02-10' AS Date), 1, N'0986810782               ', N'AiHai@gmail.com', CAST(N'2021-05-15' AS Date), N'PB5', N'aihd', N'1642386801', 0, 0, N'..\..\image\duongaihai.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00006', N'Đặng Ánh Chánh', CAST(N'1998-12-23' AS Date), 0, N'0922346837               ', N'Chanh98@gmail.com', CAST(N'2021-05-15' AS Date), N'PB4', N'chanhda', N'-644899133', 0, 0, N'..\..\image\danganhchanh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00007', N'Mai Việt Hoàng', CAST(N'1999-08-06' AS Date), 0, N'0916346987               ', N'Hoang99@gmail.com', CAST(N'2021-05-13' AS Date), N'PB4', N'hoangmv', N'-351451212', 0, 0, N'..\..\image\maiviethoang.png')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00008', N'Trần Kim Chi', CAST(N'1998-02-10' AS Date), 1, N'0911239862               ', N'Kimchi92@gmail.com', CAST(N'2021-05-14' AS Date), N'PB6', N'chitk', N'1960051351', 0, 0, N'..\..\image\trankimchi.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00009', N'Nguyễn Hồng Tú', CAST(N'2000-12-31' AS Date), 1, N'01296314569              ', N'Tucau@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'tunh', N'-1164865248', 0, 0, N'..\..\image\nguyenhongtu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00010', N'Trân Nguyễn Minh Phúc', CAST(N'1999-03-03' AS Date), 0, N'0924081977               ', N'Minhphuc99@gmail.com', CAST(N'2021-05-15' AS Date), N'PB5', N'phuctnm', N'-210067534', 0, 0, N'..\..\image\trannguyenminhphuc.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00011', N'NguyễnThị Hồng Vân', CAST(N'2000-08-03' AS Date), 1, N'0910110419               ', N'Maymay@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'vannth', N'794184416', 0, 0, N'..\..\image\nguyenthihongvan.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00012', N'Châu Thu Mỹ Vân', CAST(N'1993-01-08' AS Date), 1, N'0923119867               ', N'MyVan@gmail.com', CAST(N'2021-05-15' AS Date), N'PB4', N'vanctm', N'1985497824', 0, 0, N'..\..\image\chauthumyvan.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00013', N'Giả Ngụy Tuấn Thành', CAST(N'1997-11-14' AS Date), 0, N'0329367811               ', N'Gianguy@gmail.com', CAST(N'2021-05-15' AS Date), N'PB7', N'thanhgnt', N'8692571', 0, 0, N'..\..\image\gianguytuanthanh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00014', N'Trần Văn Hùng Mạnh', CAST(N'1996-07-26' AS Date), 0, N'0361669781               ', N'Manhthang96@gmail.com', CAST(N'2021-05-15' AS Date), N'PB3', N'manhtvh', N'-801473881', 0, 0, N'..\..\image\tranvanhungmanh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00015', N'Nguyễn Thị Tú Trinh', CAST(N'1997-07-30' AS Date), 1, N'0341926050               ', N'Trinh1997@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'trinhntt', N'1293543921', 0, 0, N'..\..\image\nguyenthitutrinh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00016', N'Nguyễn Mỹ Linh', CAST(N'2002-08-17' AS Date), 1, N'0391698943               ', N'MyLinh02@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'linhnm', N'1955023516', 0, 0, N'..\..\image\nguyenmylinh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00017', N'Huỳnh Hoàng Phú Huy', CAST(N'1998-06-16' AS Date), 0, N'01698741231              ', N'Huyphu98@gmail.com', CAST(N'2021-05-15' AS Date), N'PB4', N'huyhhp', N'492550755', 0, 0, N'..\..\image\huynhhoangphuhuy.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00018', N'Đặng Cao Cường', CAST(N'1996-09-10' AS Date), 0, N'0390205232               ', N'Cuongluc96@gmail.com', CAST(N'2021-05-13' AS Date), N'PB5', N'cuongdc', N'-593286514', 0, 0, N'..\..\image\dangcaocuong.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00019', N'Han Sara', CAST(N'2001-07-11' AS Date), 1, N'0923243689               ', N'Hankorea@gmail.com', CAST(N'2021-05-13' AS Date), N'PB3', N'hansara', N'901991098', 0, 0, N'..\..\image\han sara.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00020', N'Nguyễn Văn Lực', CAST(N'1995-09-02' AS Date), 0, N'0969743142               ', N'Vanluc95@gmail.com', CAST(N'2021-05-13' AS Date), N'PB4', N'lucnv', N'1573884331', 0, 0, N'..\..\image\nguyenvanluc.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00021', N'Cao Tú Mỹ Hảo', CAST(N'1999-05-09' AS Date), 1, N'0369874561               ', N'Myhao@gmail.com', CAST(N'2021-05-13' AS Date), N'PB3', N'haoctm', N'419413945', 0, 0, N'..\..\image\caotumyhao.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00022', N'Nguyễn Khuyến', CAST(N'1999-12-09' AS Date), 1, N'0369632145               ', N'Khuyen1999@gmail.com', CAST(N'2021-05-13' AS Date), N'PB4', N'khuyenng', N'1271277925', 0, 0, N'..\..\image\nguyenkhuyen.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00023', N'Võ Hải', CAST(N'2000-08-06' AS Date), 0, N'0937012819               ', N'HaiVo2000@gmail.com', CAST(N'2021-05-13' AS Date), N'PB2', N'haiv', N'-1542829547', 0, 0, N'..\..\image\vohai.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00024', N'Trần Nguyễn Tuấn Tú', CAST(N'1999-09-12' AS Date), 0, N'0769837365               ', N'Tuantu99@gmail.com', CAST(N'2021-05-14' AS Date), N'PB2', N'tutnt', N'-704660068', 0, 0, N'..\..\image\trannguyentuantu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00025', N'Châu Thu Mỹ Linh', CAST(N'1998-05-28' AS Date), 1, N'0773969847               ', N'Mymy1998@gmail.com', CAST(N'2021-05-14' AS Date), N'PB6', N'linhctm', N'-26885764', 0, 0, N'..\..\image\chauthumyvan2.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00026', N'Trần Lê Mai Anh', CAST(N'2000-02-26' AS Date), 1, N'0759845218               ', N'Anhanh2000@gmail.com', CAST(N'2021-05-14' AS Date), N'PB7', N'anhtlm', N'-774664773', 0, 0, N'..\..\image\tranlemaianh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00027', N'Trần Thị Thu Trang', CAST(N'1997-04-13' AS Date), 1, N'0933698777               ', N'Trangthu97@gmail.com', CAST(N'2021-05-15' AS Date), N'PB2', N'trangttt', N'1550201206', 0, 0, N'..\..\image\tranthithutrang.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00028', N'Đặng Thái Thành', CAST(N'1999-09-09' AS Date), 0, N'0939865412               ', N'Thanhthai999@gmail.com', CAST(N'2021-05-15' AS Date), N'PB3', N'thanhdt', N'827076969', 0, 0, N'..\..\image\dangthaithanh.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00029', N'Trần Đức Trọng', CAST(N'2000-12-04' AS Date), 0, N'0939238395               ', N'TrongDat@gmail.com', CAST(N'2021-05-15' AS Date), N'PB8', N'trongtd', N'-985363888', 0, 0, N'..\..\image\tranductrong.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00030', N'Phan Thị Minh Hằng', CAST(N'2001-05-23' AS Date), 1, N'0791135767               ', N'PhanHang@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'hangptm', N'1966260751', 0, 0, N'..\..\image\phanthiminhhang.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV00031', N'MuwnHius', CAST(N'2000-04-07' AS Date), 1, N'0922561423               ', N'MuwnHius2000@gmail.com', CAST(N'2021-05-15' AS Date), N'PB6', N'muwnhius', N'23102000', 0, 1, N'..\..\image\hieu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV2310', N'Phong', CAST(N'2000-10-23' AS Date), 0, N'0333185986               ', N'phonglh@gmail.com', CAST(N'2021-05-14' AS Date), N'PB9', N'phonglh', N'23102000', 0, 0, N'..\..\image\hieu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV23102000', N'Adminstrator', CAST(N'2000-10-23' AS Date), 0, N'0333185986               ', N'administrator@gmail.com', CAST(N'2021-05-14' AS Date), N'PB2', N'hieucm', N'252525', 0, 0, N'..\..\image\hieu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV231020001', N'Adminstrator', CAST(N'2000-10-23' AS Date), 1, N'0333185986               ', N'administrator@gmail.com', CAST(N'2021-05-14' AS Date), N'PB2', N'hieucm1', N'ádasd', 0, 1, N'..\..\image\hieu.jpg')
INSERT [dbo].[HoSo] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [SoDT], [Email], [NgayTuyenDung], [MaPhongBan], [TaiKhoan], [MatKhau], [Quyen], [XoaMem], [Anh]) VALUES (N'NV231029', N'MuwnHius', CAST(N'2000-10-23' AS Date), 1, N'0333185986               ', N'muwnhius@gmail.com', CAST(N'2021-05-14' AS Date), N'PB9', N'muwnhius2', N'ádasd', 0, 1, N'..\..\image\hieu.jpg')
GO
INSERT [dbo].[NhanVien_ChucVu] ([MaNhanVien], [MaChucVu], [TuNgay], [DenNgay]) VALUES (N'ADMIN', N'1', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-29' AS Date))
INSERT [dbo].[NhanVien_ChucVu] ([MaNhanVien], [MaChucVu], [TuNgay], [DenNgay]) VALUES (N'ADMIN', N'2', CAST(N'2022-01-29' AS Date), CAST(N'2022-01-30' AS Date))
INSERT [dbo].[NhanVien_ChucVu] ([MaNhanVien], [MaChucVu], [TuNgay], [DenNgay]) VALUES (N'NV00001', N'1', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-29' AS Date))
INSERT [dbo].[NhanVien_ChucVu] ([MaNhanVien], [MaChucVu], [TuNgay], [DenNgay]) VALUES (N'NV00001', N'2', CAST(N'2022-01-29' AS Date), CAST(N'2022-01-30' AS Date))
INSERT [dbo].[NhanVien_ChucVu] ([MaNhanVien], [MaChucVu], [TuNgay], [DenNgay]) VALUES (N'NV00002', N'1', CAST(N'2022-01-29' AS Date), CAST(N'2022-01-30' AS Date))
INSERT [dbo].[NhanVien_ChucVu] ([MaNhanVien], [MaChucVu], [TuNgay], [DenNgay]) VALUES (N'NV00002', N'3', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-29' AS Date))
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB03', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB1', N'Quản trị', CAST(N'2021-05-13' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB10', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB100', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB10000', N'Checking', CAST(N'2021-05-03' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB101', N'Quản trị 323', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB1080', N'VideoHD', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB11', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB111', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB1111', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB1112', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB1113', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB112', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB113', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB12', N'Rapper', CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB123', N'Quản trịfg', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB13', N'Quản xạ trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB14', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB159', N'ABC', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB16', N'Quản trị', CAST(N'2021-05-13' AS Date), 1)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB2', N'Tổng Giám đốc', CAST(N'2021-05-13' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB3', N'Kiếm soát', CAST(N'2021-05-13' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB4', N'Kiểm toán - Vật tư', CAST(N'2021-05-13' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB5', N'Kinh doanh', CAST(N'2021-05-13' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB6', N'Kế toán - Tài vụ', CAST(N'2021-05-14' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB7', N'Tổ chức - Hành chính', CAST(N'2021-05-14' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB8', N'Kế hoạch - Nghiệp vụ', CAST(N'2021-05-14' AS Date), 0)
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [NgayThanhLap], [XoaMem]) VALUES (N'PB9', N'Bảo vệ', CAST(N'2022-01-07' AS Date), 0)
GO
INSERT [dbo].[QuaTrinhCongTac] ([MaNhanVien], [TuNgay], [DenNgay], [NoiCongTac], [ChucVu]) VALUES (N'ADMIN', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-30' AS Date), N'Hà Nội', N'Administrator')
INSERT [dbo].[QuaTrinhCongTac] ([MaNhanVien], [TuNgay], [DenNgay], [NoiCongTac], [ChucVu]) VALUES (N'NV00001', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-30' AS Date), N'Hà Nội', N'Nhân viên')
INSERT [dbo].[QuaTrinhCongTac] ([MaNhanVien], [TuNgay], [DenNgay], [NoiCongTac], [ChucVu]) VALUES (N'NV00002', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-30' AS Date), N'Hà Nội', N'Giám đốc')
INSERT [dbo].[QuaTrinhCongTac] ([MaNhanVien], [TuNgay], [DenNgay], [NoiCongTac], [ChucVu]) VALUES (N'NV00006', CAST(N'2021-01-04' AS Date), CAST(N'2022-01-04' AS Date), N'Quảng Ninh', N'Nhân viên')
GO
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'ADMIN', N'Khoa học máy tính', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'ADMIN', N'Ngành Diễn viên kịch, điện ảnh - truyền hình', N'Đại học', N'Vừa học vừa làm', N'Đại học Văn Lang')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'ADMIN', N'Triết học', N'Tiến sĩ', N'Chính quy', N'Đại học Sư phạm Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00001', N'Kế toán doanh nghiệp', N'Đại học', N'Chính quy', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00001', N'Kinh doanh quốc tế', N'Đại học', N'Chính quy', N'Học viện Ngân Hàng')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00002', N'Kinh doanh', N'Cao đẳng', N'Liên thông', N'Học viện Ngân Hàng')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00002', N'Quản trị kinh doanh', N'Cao đẳng', N'Liên thông', N'Học viện Ngân Hàng')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00003', N'Kế toán', N'Đại học', N'Chính quy', N'Đại học Kinh tế Quốc dân')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00004', N'Kế toán', N'Trung cấp', N'Vừa học vừa làm', N'Trung cấp Tin học Tài chính Kế toán Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00005', N'Quản trị kinh doanh', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00006', N'Kiểm toán', N'Đại học', N'Chính quy', N'Đại học Kinh tế Quốc dân')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00007', N'Kiếm toán', N'Đại học', N'Chính quy', N'Đại học Kinh tế Quốc dân')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00008', N'Kế toán', N'Đại học', N'Chính quy', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00009', N'Kế toán', N'Cao đẳng', N'Vừa học vừa làm', N'Cao đẳng Kế toán Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00010', N'Quản trị kinh doanh', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00011', N'Kế toán', N'Đại học', N'Chính quy', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00012', N'Kiểm toán', N'Đại học', N'Chính quy', N'Học viện Ngân Hàng')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00013', N'Hành chính văn phòng', N'Đại học', N'Chính quy', N'Đại học Nội vụ')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00014', N'Quản lý nhân sự', N'Đại học', N'Chính quy', N'Đại học Lao Động – Xã Hội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00015', N'Kế toán', N'Cao đẳng', N'Liên thông', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00016', N'Kế toán', N'Đại học', N'Liên thông', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00017', N'Kiếm toán', N'Đại học', N'Chính quy', N'Học viện Ngân Hàng')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00018', N'Quản trị kinh doanh', N'Đại học', N'Chính quy', N'Đại học Kinh tế Quốc dân')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00019', N'Quản lý nhân sự', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00020', N'Kiểm toán', N'Đại học', N'Chính quy', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00021', N'Quản lý nhân sự', N'Đại học', N'Chính quy', N'Đại học Công nghệ Đông Á')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00022', N'Kiểm toán', N'Cao đẳng', N'Liên thông', N'Cao đẳng kinh tế thành phố Hồ Chí Minh')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00023', N'Quản lý nhân sự', N'Thạc sĩ', N'Chính quy', N'Đại học Kinh tế Quốc dân')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00024', N'Quản lý nhân sự', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00025', N'Kế toán', N'Đại học', N'Chính quy', N'Đại học Thương Mại')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00026', N'Hành chính học', N'Cao đẳng', N'Chính quy', N'Cao đẳng Công nghệ TP.HCM')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00027', N'Quản trị kinh doanh', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00028', N'Quản lý nhân sự', N'Đại học', N'Chính quy', N'Đại học Công nghiệp Hà Nội')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00029', N'Kế hoạch và đầu tư', N'Đại học', N'Chính quy', N'Học viên Nông nghiệp')
INSERT [dbo].[TrinhDoChuyenMon] ([MaNhanVien], [Nganh], [TrinhDo], [LoaiHinhDaoTao], [TruongDaoTao]) VALUES (N'NV00030', N'Kế toán', N'Cao đẳng', N'Vừa học vừa làm', N'Đại học Công nghiệp')
GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaNhanVien], [NgoaiNgu], [TrinhDo]) VALUES (N'ADMIN', N'English', N'A1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaNhanVien], [NgoaiNgu], [TrinhDo]) VALUES (N'ADMIN', N'Japanese', N'N1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaNhanVien], [NgoaiNgu], [TrinhDo]) VALUES (N'NV00001', N'English', N'A2')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaNhanVien], [NgoaiNgu], [TrinhDo]) VALUES (N'NV00002', N'English', N'B1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaNhanVien], [NgoaiNgu], [TrinhDo]) VALUES (N'NV00003', N'English', N'B1')
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaNhanVien], [NgoaiNgu], [TrinhDo]) VALUES (N'NV00004', N'English', N'A2')
GO
ALTER TABLE [dbo].[HoSo] ADD  DEFAULT ((0)) FOR [Quyen]
GO
ALTER TABLE [dbo].[HoSo] ADD  DEFAULT ((0)) FOR [XoaMem]
GO
ALTER TABLE [dbo].[PhongBan] ADD  CONSTRAINT [DF_PhongBan_XoaMem]  DEFAULT ((0)) FOR [XoaMem]
GO
ALTER TABLE [dbo].[HoSo]  WITH CHECK ADD FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[NhanVien_ChucVu]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien_ChucVu]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[HoSo] ([MaNhanVien])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[HoSo] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TrinhDoChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK__TrinhDoCh__MaNha__1920BF5C] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[HoSo] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TrinhDoChuyenMon] CHECK CONSTRAINT [FK__TrinhDoCh__MaNha__1920BF5C]
GO
ALTER TABLE [dbo].[TrinhDoNgoaiNgu]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[HoSo] ([MaNhanVien])
GO
/****** Object:  StoredProcedure [dbo].[InHoSo]    Script Date: 1/21/2022 1:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InHoSo]
	@MaNhanVien varchar(50)
AS
	SELECT  A.HoTen, A.NgaySinh, CASE WHEN A.GioiTinh = 0 THEN N'Nam' WHEN A.GioiTinh = 1 THEN N'Nữ' END AS GioiTinh, A.SoDT, A.Email, A.NgayTuyenDung, A.Anh, C.TenPhongBan,B.Nganh,B.TrinhDo,B.LoaiHinhDaoTao,B.TruongDaoTao
	FROM HoSo as A, TrinhDoChuyenMon as B, PhongBan as C
	WHERE A.MaNhanVien = B.MaNhanVien AND A.MaPhongBan = C.MaPhongBan AND A.MaNhanVien = @MaNhanVien

GO
USE [master]
GO
ALTER DATABASE [QuanLyNhanSu] SET  READ_WRITE 
GO
