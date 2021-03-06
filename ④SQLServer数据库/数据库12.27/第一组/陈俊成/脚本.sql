USE [cjc]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/27/2017 20:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[sno] [char](11) NOT NULL,
	[sname] [char](20) NULL,
	[ssex] [char](2) NULL,
	[sage] [smallint] NULL,
	[sdept] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215121  ', N'李勇                ', N'男', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215122  ', N'李一                ', N'女', 21, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215123  ', N'李二                ', N'男', 22, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215124  ', N'李三                ', N'女', 23, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215125  ', N'李四                ', N'女', 24, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215126  ', N'李五                ', N'男', 25, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215127  ', N'李六                ', N'女', 26, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215128  ', N'李七                ', N'男', 27, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215129  ', N'李八                ', N'男', 28, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215130  ', N'李九                ', N'女', 29, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215131  ', N'张勇                ', N'男', 19, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215132  ', N'王勇                ', N'男', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215133  ', N'陈勇                ', N'女', 22, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215134  ', N'李1                 ', N'男', 25, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215135  ', N'李2                 ', N'女', 23, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215136  ', N'李3                 ', N'男', 29, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215137  ', N'李4                 ', N'男', 24, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215138  ', N'李5                 ', N'女', 21, N'is                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215139  ', N'李6                 ', N'男', 27, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215140  ', N'李7                 ', N'女', 26, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215141  ', N'李8                 ', N'男', 23, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215142  ', N'李9                 ', N'男', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215143  ', N'梁勇                ', N'男', 19, N'ma                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215144  ', N'袁勇                ', N'女', 20, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215145  ', N'李红                ', N'男', 18, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215146  ', N'李红二              ', N'男', 18, N'cs                  ')
INSERT [dbo].[student] ([sno], [sname], [ssex], [sage], [sdept]) VALUES (N'200215147  ', N'李丽二              ', N'男', 18, N'cs                  ')
/****** Object:  Table [dbo].[sc]    Script Date: 12/27/2017 20:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sc](
	[sno] [char](11) NULL,
	[cno] [char](4) NULL,
	[grade] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215121  ', N'10  ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215131  ', N'2   ', 81)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215141  ', N'2   ', 82)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215122  ', N'10  ', 83)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215128  ', N'8   ', 84)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215127  ', N'5   ', 85)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'7   ', 86)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215129  ', N'8   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215130  ', N'10  ', 82)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'6   ', 88)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'8   ', 89)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215141  ', N'4   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215145  ', N'5   ', 85)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215144  ', N'6   ', 87)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215139  ', N'7   ', 88)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215120  ', N'2   ', 90)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215126  ', N'4   ', 92)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215135  ', N'6   ', 32)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215138  ', N'7   ', 64)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215140  ', N'8   ', 76)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215144  ', N'9   ', 32)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215137  ', N'2   ', 34)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215133  ', N'4   ', 80)
INSERT [dbo].[sc] ([sno], [cno], [grade]) VALUES (N'200215132  ', N'8   ', 88)
/****** Object:  Table [dbo].[course]    Script Date: 12/27/2017 20:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[cno] [char](4) NULL,
	[cname] [char](20) NULL,
	[ccredit] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'1   ', N'数据库              ', 4)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'2   ', N'计算机基础          ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'3   ', N'数学                ', 5)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'4   ', N'英语                ', 7)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'5   ', N'pascal语言          ', 3)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'6   ', N'物理                ', 1)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'7   ', N'计算机科学          ', 6)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'8   ', N'信息                ', 8)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'9   ', N'数据机构            ', 10)
INSERT [dbo].[course] ([cno], [cname], [ccredit]) VALUES (N'10  ', N'数据处理            ', 4)
/****** Object:  Default [DF_student_ssex]    Script Date: 12/27/2017 20:49:17 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_ssex]  DEFAULT ('ssex=男or ssex=女') FOR [ssex]
GO
