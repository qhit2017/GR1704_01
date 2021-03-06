USE [1704 wangwenzheng]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/27/2017 20:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cno] [char](4) NOT NULL,
	[canme] [char](20) NULL,
	[ccredit] [smallint] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'1   ', N'数据库              ', 4)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'10  ', N'思修                ', 2)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'2   ', N'数学                ', 2)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'3   ', N'信息系统            ', 4)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'4   ', N'操作系统            ', 3)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'5   ', N'数据结构            ', 4)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'6   ', N'数据处理            ', 2)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'7   ', N'pascal语言          ', 4)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'8   ', N'语文                ', 4)
INSERT [dbo].[course] ([cno], [canme], [ccredit]) VALUES (N'9   ', N'英语                ', 3)
/****** Object:  Table [dbo].[student]    Script Date: 12/27/2017 20:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [nvarchar](20) NULL,
	[ssex] [char](2) NULL,
	[sage] [smallint] NULL,
	[sdept] [char](20) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'陈俊成              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151210 ', N'尚赛赛              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151211 ', N'尚威杰              ', N'男', 18, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151212 ', N'孙玉峰              ', N'男', 17, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151213 ', N'申宇浩              ', N'男', 15, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151214 ', N'王文政              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151215 ', N'许方为              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151216 ', N'许龙溪              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151217 ', N'徐士煜              ', N'男', 20, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151218 ', N'于圣杰              ', N'男', 36, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151219 ', N'张戈                ', N'男', 17, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'陈启航              ', N'男', 16, N'建筑系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151220 ', N'张家豪              ', N'男', 18, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151221 ', N'张济森              ', N'男', 19, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151222 ', N'李勇                ', N'男', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151223 ', N'刘晨                ', N'女', 19, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151224 ', N'王敏                ', N'女', 18, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'2002151225 ', N'张立                ', N'男', 19, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'党刘涛              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'刘博                ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'李佳康              ', N'男', 17, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'刘万通              ', N'男', 15, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'梁哲                ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'刘长江              ', N'男', 16, N'信工系              ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'戚二康              ', N'男', 16, N'信工系              ')
/****** Object:  Table [dbo].[sc]    Script Date: 12/27/2017 20:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sc](
	[sno] [char](11) NOT NULL,
	[cno] [char](4) NOT NULL,
	[grade] [smallint] NULL,
 CONSTRAINT [PK_sc] PRIMARY KEY CLUSTERED 
(
	[cno] ASC,
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'1   ', 92)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151211 ', N'1   ', 91)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151221 ', N'1   ', 78)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151210 ', N'10  ', 86)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151220 ', N'10  ', 77)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151212 ', N'2   ', 84)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'2   ', 85)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151222 ', N'2   ', 79)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151213 ', N'3   ', 83)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151223 ', N'3   ', 65)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215123  ', N'3   ', 88)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151214 ', N'4   ', 69)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151224 ', N'4   ', 99)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215124  ', N'4   ', 90)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151215 ', N'5   ', 76)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151225 ', N'5   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215125  ', N'5   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151216 ', N'6   ', 75)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'6   ', 64)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151217 ', N'7   ', 79)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215127  ', N'7   ', 97)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151218 ', N'8   ', 70)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'8   ', 34)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'2002151219 ', N'9   ', 73)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'9   ', 80)
/****** Object:  Default [DF_student_ssex]    Script Date: 12/27/2017 20:48:40 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('男') FOR [ssex]
GO
/****** Object:  Check [CK_student]    Script Date: 12/27/2017 20:48:40 ******/
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [CK_student] CHECK  (([ssex]='男' OR [ssex]='女'))
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [CK_student]
GO
/****** Object:  ForeignKey [FK_sc_course]    Script Date: 12/27/2017 20:48:40 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([cno])
REFERENCES [dbo].[course] ([cno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]
GO
/****** Object:  ForeignKey [FK_sc_student]    Script Date: 12/27/2017 20:48:40 ******/
ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([sno])
REFERENCES [dbo].[student] ([sno])
GO
ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]
GO
