USE [CARD ]
GO
/****** Object:  Table [dbo].[BOOKS]    Script Date: 12/26/2017 21:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKS](
	[bno] [int] NOT NULL,
	[bname] [nvarchar](10) NULL,
	[author] [nvarchar](10) NULL,
	[Price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_BOOKS] PRIMARY KEY CLUSTERED 
(
	[bno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (1, N'水浒传', N'赵信', CAST(25.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (2, N'西游记', N'韩信', CAST(25.00 AS Decimal(10, 2)), 49)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (3, N'三国', N'系', CAST(20.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (4, N'红楼梦', N'雨', CAST(25.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (5, N'计算机基础', N'懵', CAST(13.10 AS Decimal(10, 2)), 20)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (6, N'网络安全原理', N'泷', CAST(20.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (7, N'互联网+', N'麦', CAST(25.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (8, N'计算机硬件', N'香', CAST(25.00 AS Decimal(10, 2)), 49)
INSERT [dbo].[BOOKS] ([bno], [bname], [author], [Price], [quantity]) VALUES (9, N'数据库原理', N'夕', CAST(20.00 AS Decimal(10, 2)), 50)
/****** Object:  Table [dbo].[CARD]    Script Date: 12/26/2017 21:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARD](
	[Cno] [int] NOT NULL,
	[Name] [nvarchar](10) NULL,
	[Class] [nvarchar](8) NULL,
 CONSTRAINT [PK_CARD] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (1, N'刘长江', N'四班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (2, N'孙尚香', N'三班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (3, N'刘禅', N'二班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (4, N'刘备', N'一班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (5, N'关羽', N'四班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (6, N'张飞', N'三班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (7, N'貂蝉', N'二班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (8, N'吕布', N'一班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (9, N'曹操', N'四班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (10, N'后羿', N'三班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (11, N'隐世明', N'二班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (12, N'小乔', N'一班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (13, N'大乔', N'四班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (14, N'周瑜', N'三班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (15, N'花木兰', N'二班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (16, N'至尊宝', N'一班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (17, N'紫霞仙子', N'四班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (18, N'女娲', N'三班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (19, N'百里守约', N'二班')
INSERT [dbo].[CARD] ([Cno], [Name], [Class]) VALUES (20, N'成吉思汗', N'一班')
/****** Object:  Table [dbo].[BORROW]    Script Date: 12/26/2017 21:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BORROW](
	[cno] [int] NULL,
	[bno] [int] NULL,
	[jdate] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (1, 1, CAST(0x793D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (2, 2, CAST(0x7D3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (3, 6, CAST(0x7F3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (4, 4, CAST(0x7E3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (5, 5, CAST(0x7A3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (6, 8, CAST(0x7F3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (7, 9, CAST(0x7E3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (8, 4, CAST(0x813D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (9, 2, CAST(0x823D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (10, 1, CAST(0x7B3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (11, 9, CAST(0x8D3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (12, 4, CAST(0x913D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (13, 5, CAST(0x893D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (14, 7, CAST(0x813D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (15, 2, CAST(0x933D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (16, 6, CAST(0x923D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (17, 5, CAST(0x903D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (18, 6, CAST(0x883D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (19, 7, CAST(0x893D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (20, 2, CAST(0x8A3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (1, 2, CAST(0x843D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (6, 4, CAST(0x873D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (13, 7, CAST(0x823D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (14, 3, CAST(0x8F3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (5, 6, CAST(0x8E3D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (6, 7, CAST(0x833D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (7, 2, CAST(0x923D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (8, 1, CAST(0x863D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (9, 4, CAST(0x943D0B00 AS Date))
INSERT [dbo].[BORROW] ([cno], [bno], [jdate]) VALUES (10, 8, CAST(0x963D0B00 AS Date))
/****** Object:  ForeignKey [FK_BORROW_BOOKS]    Script Date: 12/26/2017 21:01:59 ******/
ALTER TABLE [dbo].[BORROW]  WITH CHECK ADD  CONSTRAINT [FK_BORROW_BOOKS] FOREIGN KEY([bno])
REFERENCES [dbo].[BOOKS] ([bno])
GO
ALTER TABLE [dbo].[BORROW] CHECK CONSTRAINT [FK_BORROW_BOOKS]
GO
/****** Object:  ForeignKey [FK_BORROW_CARD]    Script Date: 12/26/2017 21:01:59 ******/
ALTER TABLE [dbo].[BORROW]  WITH CHECK ADD  CONSTRAINT [FK_BORROW_CARD] FOREIGN KEY([cno])
REFERENCES [dbo].[CARD] ([Cno])
GO
ALTER TABLE [dbo].[BORROW] CHECK CONSTRAINT [FK_BORROW_CARD]
GO
