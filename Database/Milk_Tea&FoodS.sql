USE [Milk_Tea&FoodS]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/10/2019 10:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
	[KichThuoc] [nvarchar](200) NULL,
 CONSTRAINT [FK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/10/2019 10:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[SoHoaDon] [varchar](15) NOT NULL,
	[NgayTaoHD] [date] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[TongTien] [money] NOT NULL,
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [FK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/10/2019 10:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](100) NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[NgayDK] [date] NULL,
 CONSTRAINT [FK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/10/2019 10:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[KichThuoc] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/10/2019 10:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[VaiTro] [bit] NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ĐiaChi] [nvarchar](max) NULL,
	[Hinh] [nvarchar](50) NOT NULL,
 CONSTRAINT [FK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/10/2019 10:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[NguoiTao] [nvarchar](55) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[TenLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2037, 2028, 1003, 3, 435000.0000, N'Lớn')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2038, 2029, 1002, 3, 135000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2039, 2030, 1002, 2, 90000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2040, 2031, 1002, 2, 90000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2041, 2032, 1002, 2, 90000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2042, 2033, 1002, 2, 90000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2043, 2034, 1002, 2, 90000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2044, 2035, 1002, 4, 180000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2045, 2036, 1004, 2, 100000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2046, 2037, 1002, 2, 90000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2047, 2038, 1003, 3, 435000.0000, N'Lớn')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2048, 2039, 1002, 3, 135000.0000, N'Vừa')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2049, 2039, 1003, 2, 290000.0000, N'Lớn')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [ThanhTien], [KichThuoc]) VALUES (2050, 2039, 1004, 1, 50000.0000, N'Vừa')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2026, N'191209001', CAST(N'2019-12-09' AS Date), 2, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2027, N'191209002', CAST(N'2019-12-09' AS Date), 2, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2028, N'191209003', CAST(N'2019-12-09' AS Date), 2, 1, 435000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2029, N'191209004', CAST(N'2019-12-09' AS Date), 1, 1, 135000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2030, N'191209005', CAST(N'2019-12-09' AS Date), 2, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2031, N'191209006', CAST(N'2019-12-09' AS Date), 1, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2032, N'191209007', CAST(N'2019-12-09' AS Date), 1, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2033, N'191209008', CAST(N'2019-12-09' AS Date), 1, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2034, N'191210001', CAST(N'2019-12-10' AS Date), 1, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2035, N'191210002', CAST(N'2019-12-10' AS Date), 1, 1, 180000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2036, N'191210003', CAST(N'2019-12-10' AS Date), 1, 1, 100000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2037, N'191210004', CAST(N'2019-12-10' AS Date), 2, 1, 90000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2038, N'191210005', CAST(N'2019-12-10' AS Date), 2, 1, 435000.0000, N'LinhLinh')
INSERT [dbo].[HoaDon] ([MaHD], [SoHoaDon], [NgayTaoHD], [MaNV], [MaKH], [TongTien], [GhiChu]) VALUES (2039, N'191210006', CAST(N'2019-12-10' AS Date), 2, 1, 475000.0000, N'LinhLinh')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [NgaySinh], [GioiTinh], [DienThoai], [Email], [GhiChu], [MaNV], [NgayDK]) VALUES (1, N'Nguyễn Văn Linh', CAST(N'1987-03-05' AS Date), 1, N'0456789674', N'Linh@gmail.com', N'LinhLinh', N'1', CAST(N'2019-07-09' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [NgaySinh], [GioiTinh], [DienThoai], [Email], [GhiChu], [MaNV], [NgayDK]) VALUES (2, N'Trần Tấn Lộc', CAST(N'1998-07-06' AS Date), 1, N'0768976522', N'Loc@gmail.com', N'LocLoc', N'2', CAST(N'2019-06-08' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [NgaySinh], [GioiTinh], [DienThoai], [Email], [GhiChu], [MaNV], [NgayDK]) VALUES (5, N'Phạm Quỳnh Anh', CAST(N'2000-08-09' AS Date), 0, N'0789079865', N'Quynh@gmail.com', N'QuynhQuynh', N'1', CAST(N'2019-04-03' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [NgaySinh], [GioiTinh], [DienThoai], [Email], [GhiChu], [MaNV], [NgayDK]) VALUES (1004, N'Lưu Ly', CAST(N'2000-01-01' AS Date), 0, N'098765674', N'ly@gmail.com', N'LyLy123', N'2', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [NgaySinh], [GioiTinh], [DienThoai], [Email], [GhiChu], [MaNV], [NgayDK]) VALUES (1006, N'Hà Anh Tú', CAST(N'2000-02-04' AS Date), 1, N'087654567', N'Tu241@gmail.com', N'Tú cô hồn', N'1', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaSP], [TenLSP], [TenSP], [Gia], [KichThuoc], [MaNV]) VALUES (1002, N'Trà Sữa', N'Trà sữa trân châu trắng', 45000, N'Vừa', N'Nguyễn Ngô Anh Tuấn')
INSERT [dbo].[LoaiSanPham] ([MaSP], [TenLSP], [TenSP], [Gia], [KichThuoc], [MaNV]) VALUES (1003, N'Đồ Ăn Vặt', N'Gà Rán', 145000, N'Lớn', N'Trần Thị Quỳnh')
INSERT [dbo].[LoaiSanPham] ([MaSP], [TenLSP], [TenSP], [Gia], [KichThuoc], [MaNV]) VALUES (1004, N'Kem', N'Kem dâu', 50000, N'Vừa', N'Trần Thị Quỳnh')
INSERT [dbo].[LoaiSanPham] ([MaSP], [TenLSP], [TenSP], [Gia], [KichThuoc], [MaNV]) VALUES (1005, N'Trà Sữa', N'Trà sữa matcha', 25000, N'Nhỏ', N'Nguyễn Ngô Anh Tuấn')
INSERT [dbo].[LoaiSanPham] ([MaSP], [TenLSP], [TenSP], [Gia], [KichThuoc], [MaNV]) VALUES (1006, N'Đồ Ăn Vặt', N'Socola', 30000, N'Vừa', N'Nguyễn Ngô Anh Tuấn')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [HoTen], [VaiTro], [NgaySinh], [GioiTinh], [DienThoai], [Email], [ĐiaChi], [Hinh]) VALUES (1, N'123456', N'Nguyễn Ngô Anh Tuấn', 1, CAST(N'2000-05-01' AS Date), 1, N'0373233538', N'Tuan@gmail.com', N'Quảng Ngãi', N'2.jpg')
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [HoTen], [VaiTro], [NgaySinh], [GioiTinh], [DienThoai], [Email], [ĐiaChi], [Hinh]) VALUES (2, N'123456', N'Trần Thị Quỳnh', 0, CAST(N'1997-05-21' AS Date), 0, N'0365467324', N'Quynh@gmail.com', N'Thái Bình', N'3.jpg')
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [HoTen], [VaiTro], [NgaySinh], [GioiTinh], [DienThoai], [Email], [ĐiaChi], [Hinh]) VALUES (3, N'123456', N'Trịnh Như Trịnh', 0, CAST(N'2000-07-08' AS Date), 1, N'0786574355', N'Trinh@gmail.com', N'Bầu Năng 2', N'4.jpg')
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [HoTen], [VaiTro], [NgaySinh], [GioiTinh], [DienThoai], [Email], [ĐiaChi], [Hinh]) VALUES (1004, N'123456', N'Trần Thị Huệ', 0, CAST(N'2000-02-04' AS Date), 0, N'0564346754', N'Hue2345@gmail.com', N'Vũng Tàu', N'4.jpg')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaLoaiSP], [TenLSP], [SoLuong], [NguoiTao], [MoTa]) VALUES (1003, N'Đồ Ăn Vặt', 1, N'Nguyễn Ngô Anh Tuấn', N'DAV')
INSERT [dbo].[SanPham] ([MaLoaiSP], [TenLSP], [SoLuong], [NguoiTao], [MoTa]) VALUES (1004, N'Kem', 1, N'Nguyễn Ngô Anh Tuấn', N'K')
INSERT [dbo].[SanPham] ([MaLoaiSP], [TenLSP], [SoLuong], [NguoiTao], [MoTa]) VALUES (1002, N'Trà Sữa', 1, N'Nguyễn Ngô Anh Tuấn', N'TS')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon1]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_LoaiSanPham1] FOREIGN KEY([MaSP])
REFERENCES [dbo].[LoaiSanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_LoaiSanPham1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham_SanPham] FOREIGN KEY([TenLSP])
REFERENCES [dbo].[SanPham] ([TenLSP])
GO
ALTER TABLE [dbo].[LoaiSanPham] CHECK CONSTRAINT [FK_LoaiSanPham_SanPham]
GO
