USE [12.24]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/27/2017 21:05:23 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 12/27/2017 21:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [char](11) NOT NULL,
	[Sname] [char](20) NULL,
	[Ssex] [char](2) NULL,
	[Sage] [smallint] NULL,
	[Sdept] [char](20) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SC]    Script Date: 12/27/2017 21:05:23 ******/
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
/****** Object:  Default [DF_Student_Ssex]    Script Date: 12/27/2017 21:05:23 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Ssex]  DEFAULT ('男') FOR [Ssex]
GO
/****** Object:  Check [CK_Student]    Script Date: 12/27/2017 21:05:23 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student] CHECK  (([Ssex]='男' OR [Ssex]='女'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student]
GO
/****** Object:  ForeignKey [FK_SC_Course]    Script Date: 12/27/2017 21:05:23 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Course] FOREIGN KEY([Cno])
REFERENCES [dbo].[Course] ([Cno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Course]
GO
/****** Object:  ForeignKey [FK_SC_Student]    Script Date: 12/27/2017 21:05:23 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_SC_Student] FOREIGN KEY([Sno])
REFERENCES [dbo].[Student] ([Sno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_SC_Student]
GO
