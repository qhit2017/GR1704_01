USE [xulongxi]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/27/2017 21:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [char](11) NULL,
	[Sname] [char](20) NULL,
	[Ssex] [char](2) NULL,
	[Sage] [smallint] NULL,
	[Sdept] [char](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215121  ', N'李勇                ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215122  ', N'刘晨                ', N'女', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215123  ', N'王敏                ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215124  ', N'张立                ', N'男', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215125  ', N'影                  ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215126  ', N'冷                  ', N'女', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215127  ', N'魅                  ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215128  ', N'音                  ', N'男', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215129  ', N'蔡文姬              ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215130  ', N'钟无艳              ', N'女', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215131  ', N'泰达米尔            ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215132  ', N'易                  ', N'男', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215133  ', N'卡特琳娜            ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215134  ', N'赵信                ', N'男', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215135  ', N'盖伦                ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215136  ', N'拉克丝              ', N'女', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215137  ', N'金克斯              ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215138  ', N'嘉文                ', N'男', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215139  ', N'安妮                ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215140  ', N'武则天              ', N'女', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215141  ', N'狄仁杰              ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215142  ', N'努努                ', N'女', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215143  ', N'索菲亚              ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215144  ', N'孙悟空              ', N'男', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215145  ', N'德莱厄斯            ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'9102040203 ', N'兮                  ', N'男', 20, N'CS                  ')
/****** Object:  Table [dbo].[SC]    Script Date: 12/27/2017 21:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[Sno] [char](11) NULL,
	[Cno] [char](4) NULL,
	[Grade] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'1   ', 92)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'2   ', 82)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'3   ', 55)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215122  ', N'2   ', 58)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215122  ', N'1   ', 60)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215127  ', N'6   ', 84)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215126  ', N'7   ', 71)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215125  ', N'9   ', 76)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215140  ', N'8   ', 75)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215143  ', N'1   ', 51)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215131  ', N'9   ', 77)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215131  ', N'3   ', 71)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215137  ', N'6   ', 15)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215144  ', N'2   ', 59)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215126  ', N'1   ', 60)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215129  ', N'1   ', 84)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215135  ', N'9   ', 71)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215140  ', N'9   ', 76)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215140  ', N'5   ', 75)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215141  ', N'4   ', 51)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'20021532   ', N'1   ', 84)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215135  ', N'9   ', 71)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'9   ', 76)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215129  ', N'5   ', 75)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215127  ', N'4   ', 51)
/****** Object:  Table [dbo].[Course]    Script Date: 12/27/2017 21:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Cno] [char](4) NULL,
	[CName] [nchar](20) NULL,
	[Ccredit] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'1   ', N'数据库                 ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'2   ', N'数学                  ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'3   ', N'信息系统                ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'4   ', N'操作系统                ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'5   ', N'数据结构                ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'6   ', N'数据处理                ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'7   ', N'PASCAL语言            ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'8   ', N'物理                  ', 5)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'9   ', N'化学                  ', 2)
