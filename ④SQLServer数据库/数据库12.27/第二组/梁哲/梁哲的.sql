USE [梁哲哲]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/27/2017 20:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Cno] [char](4) NOT NULL,
	[CName] [char](20) NULL,
	[Ccredit] [smallint] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'1   ', N'数据库              ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'10  ', N'操作系统            ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'11  ', N'数据处理            ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'12  ', N'操作系统            ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'13  ', N'数据处理            ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'14  ', N'PASCAL语言          ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'15  ', N'PASCAL语言          ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'16  ', N'数据结构            ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'17  ', N'PASCAL语言          ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'2   ', N'数学                ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'3   ', N'信息系统            ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'4   ', N'数学                ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'5   ', N'操作系统            ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'6   ', N'数学                ', 3)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'7   ', N'数据库              ', 4)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'8   ', N'信息系统            ', 2)
INSERT [dbo].[Course] ([Cno], [CName], [Ccredit]) VALUES (N'9   ', N'数据库              ', 4)
/****** Object:  Table [dbo].[Student]    Script Date: 12/27/2017 20:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [char](11) NOT NULL,
	[Sname] [char](20) NULL,
	[Ssex] [char](2) NOT NULL,
	[Sage] [smallint] NULL,
	[Sdept] [char](20) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215121  ', N'梁哲                ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215122  ', N'李勇                ', N'男', 17, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215123  ', N'刘晨                ', N'女', 18, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215124  ', N'三第                ', N'男', 19, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215125  ', N'王敏                ', N'女', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215126  ', N'张立                ', N'男', 17, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215127  ', N'瑞风                ', N'男', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215128  ', N'张戈                ', N'女', 18, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215129  ', N'梁壮壮              ', N'男', 17, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215130  ', N'王文政              ', N'男', 18, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215131  ', N'庞星辰              ', N'男', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215132  ', N'许龙曦              ', N'男', 20, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215133  ', N'陈启航              ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215134  ', N'尚伟杰              ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215135  ', N'徐诗雨              ', N'女', 18, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215136  ', N'于胜杰              ', N'男', 17, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215137  ', N'张家豪              ', N'男', 20, N'MA                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215138  ', N'刘博                ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215139  ', N'党刘涛              ', N'男', 18, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215140  ', N'王彬彬              ', N'男', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215141  ', N'王梦瑶              ', N'女', 19, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215142  ', N'王珂                ', N'女', 20, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215143  ', N'刘世鑫              ', N'女', 20, N'IS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215144  ', N'刘万通              ', N'男', 19, N'CS                  ')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sage], [Sdept]) VALUES (N'200215145  ', N'其尔康              ', N'女', 20, N'IS                  ')
/****** Object:  Table [dbo].[SC]    Script Date: 12/27/2017 20:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[Sno] [char](11) NOT NULL,
	[Cno] [char](4) NOT NULL,
	[Grade] [smallint] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215121  ', N'1   ', 92)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215122  ', N'2   ', 82)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215123  ', N'3   ', 78)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215124  ', N'4   ', 82)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215125  ', N'5   ', 88)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215126  ', N'6   ', 74)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215127  ', N'7   ', 94)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215128  ', N'3   ', 92)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215129  ', N'9   ', 84)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215130  ', N'1   ', 38)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215131  ', N'1   ', 64)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215132  ', N'2   ', 75)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215133  ', N'3   ', 68)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215134  ', N'4   ', 69)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215135  ', N'5   ', 78)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215136  ', N'6   ', 95)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215137  ', N'5   ', 71)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215138  ', N'6   ', 61)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215139  ', N'4   ', 82)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215140  ', N'4   ', 83)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215141  ', N'6   ', 80)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215142  ', N'5   ', 70)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215143  ', N'7   ', 80)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215144  ', N'7   ', 97)
INSERT [dbo].[SC] ([Sno], [Cno], [Grade]) VALUES (N'200215145  ', N'7   ', 88)
/****** Object:  Default [DF_Student_Ssex]    Script Date: 12/27/2017 20:27:38 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Ssex]  DEFAULT ('Ssex=男') FOR [Ssex]
GO
/****** Object:  Check [CK_Student]    Script Date: 12/27/2017 20:27:38 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student] CHECK  (([Ssex]='男' OR [Ssex]='女'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student]
GO
/****** Object:  ForeignKey [FK_SC_Course]    Script Date: 12/27/2017 20:27:38 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Course] FOREIGN KEY([Cno])
REFERENCES [dbo].[Course] ([Cno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Course]
GO
/****** Object:  ForeignKey [FK_SC_Student]    Script Date: 12/27/2017 20:27:38 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Student] FOREIGN KEY([Sno])
REFERENCES [dbo].[Student] ([Sno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Student]
GO
