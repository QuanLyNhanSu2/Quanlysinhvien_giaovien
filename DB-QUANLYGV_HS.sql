CREATE DATABASE QUANLYGV_HS
GO

USE [QUANLYGV_HS]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 03/26/2017 16:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[LopID] [int] NOT NULL,
	[Tenlop] [nvarchar](50) NULL,
	[Mota] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[LopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (1, N'12A1', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (2, N'12A2', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (3, N'12A3', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (4, N'11A1', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (5, N'11A2', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (6, N'11A3', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (7, N'10A1', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (8, N'10A2', NULL)
INSERT [dbo].[Lop] ([LopID], [Tenlop], [Mota]) VALUES (9, N'10A3', NULL)
/****** Object:  Table [dbo].[Giaovien]    Script Date: 03/26/2017 16:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giaovien](
	[GiaovienID] [int] NOT NULL,
	[Tengiaovien] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
	[email] [nvarchar](50) NULL,
	[Sodienthoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GiaovienID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Giaovien] ([GiaovienID], [Tengiaovien], [Ngaysinh], [email], [Sodienthoai]) VALUES (1, N'Vương Văn An', CAST(0x0000656E00000000 AS DateTime), N'an@gmail.com', N'01647362817')
INSERT [dbo].[Giaovien] ([GiaovienID], [Tengiaovien], [Ngaysinh], [email], [Sodienthoai]) VALUES (2, N'Trần Thị Dung', CAST(0x00006CB000000000 AS DateTime), N'dung@gmail.com', N'01645967463')
INSERT [dbo].[Giaovien] ([GiaovienID], [Tengiaovien], [Ngaysinh], [email], [Sodienthoai]) VALUES (3, N'Nguyễn Thanh Lân', CAST(0x0000737500000000 AS DateTime), N'lan@gmail.com', N'0986172364')
INSERT [dbo].[Giaovien] ([GiaovienID], [Tengiaovien], [Ngaysinh], [email], [Sodienthoai]) VALUES (4, N'Nguyễn Thị Nhàn', CAST(0x00006B7E00000000 AS DateTime), N'nhan@gmail.com', N'01645835128')
INSERT [dbo].[Giaovien] ([GiaovienID], [Tengiaovien], [Ngaysinh], [email], [Sodienthoai]) VALUES (5, N'Phan Văn Khải', CAST(0x00005D1900000000 AS DateTime), N'khai@gmail.com', N'01234758475')
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 03/26/2017 16:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[SinhvienID] [int] NOT NULL,
	[Tensinhvien] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
	[LopID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SinhvienID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (1, N'Nguyễn Văn An', CAST(0x00008D6000000000 AS DateTime), 1)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (2, N'Phạm Thị Thu', CAST(0x00008C5000000000 AS DateTime), 3)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (3, N'Phan Văn Thao', CAST(0x00008F0D00000000 AS DateTime), 5)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (4, N'Đào Hoàng Dũng', CAST(0x00008EA100000000 AS DateTime), 2)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (5, N'Tạ Khánh Dương', CAST(0x00008F2D00000000 AS DateTime), 6)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (6, N'Quách Lý Ngọc', CAST(0x00008D5F00000000 AS DateTime), 9)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (7, N'Phan Duy Hiệp', CAST(0x0000918500000000 AS DateTime), 2)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (8, N'Trần Văn An', CAST(0x00008EAC00000000 AS DateTime), 6)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (9, N'Nguyễn Khánh Trường', CAST(0x0000901A00000000 AS DateTime), 1)
INSERT [dbo].[Sinhvien] ([SinhvienID], [Tensinhvien], [Ngaysinh], [LopID]) VALUES (10, N'Lại Quốc Huy', CAST(0x00008F0700000000 AS DateTime), 8)
/****** Object:  Table [dbo].[Giaovien_Lop]    Script Date: 03/26/2017 16:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giaovien_Lop](
	[Giaovien_LopID] [int] NOT NULL,
	[GiaovienID] [int] NULL,
	[LopID] [int] NULL,
	[Chunhiem] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Giaovien_LopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (1, 2, 1, 1)
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (2, 1, 3, 0)
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (3, 4, 2, 0)
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (4, 5, 5, 1)
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (5, 3, 7, 1)
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (6, 3, 9, 0)
INSERT [dbo].[Giaovien_Lop] ([Giaovien_LopID], [GiaovienID], [LopID], [Chunhiem]) VALUES (7, 1, 6, 1)
/****** Object:  ForeignKey [FK__Giaovien___Giaov__0DAF0CB0]    Script Date: 03/26/2017 16:59:35 ******/
ALTER TABLE [dbo].[Giaovien_Lop]  WITH CHECK ADD FOREIGN KEY([GiaovienID])
REFERENCES [dbo].[Giaovien] ([GiaovienID])
GO
/****** Object:  ForeignKey [FK__Giaovien___LopID__0EA330E9]    Script Date: 03/26/2017 16:59:35 ******/
ALTER TABLE [dbo].[Giaovien_Lop]  WITH CHECK ADD FOREIGN KEY([LopID])
REFERENCES [dbo].[Lop] ([LopID])
GO
/****** Object:  ForeignKey [FK__Sinhvien__LopID__0519C6AF]    Script Date: 03/26/2017 16:59:35 ******/
ALTER TABLE [dbo].[Sinhvien]  WITH CHECK ADD FOREIGN KEY([LopID])
REFERENCES [dbo].[Lop] ([LopID])
GO
