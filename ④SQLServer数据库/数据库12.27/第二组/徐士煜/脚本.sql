
CREATE TABLE [dbo].[course](
	[Cno] [char](4) NOT NULL,
	[CName] [char](20) NULL,
	[Ccredit] [smallint] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[student](
	[Sno] [char](11) NOT NULL,
	[Sname] [char](20) NULL,
	[Ssex] [char](2) NULL,
	[Sage] [smallint] NULL,
	[Sdept] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[sc](
	[Sno] [char](11) NULL,
	[Cno] [char](4) NULL,
	[Grade] [smallint] NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([Cno])
REFERENCES [dbo].[course] ([Cno])

ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_course]

ALTER TABLE [dbo].[sc]  WITH CHECK ADD  CONSTRAINT [FK_sc_student] FOREIGN KEY([Sno])
REFERENCES [dbo].[student] ([Sno])

ALTER TABLE [dbo].[sc] CHECK CONSTRAINT [FK_sc_student]

