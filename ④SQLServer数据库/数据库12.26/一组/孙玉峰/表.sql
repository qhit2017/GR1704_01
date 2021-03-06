USE [yushengjie]
GO
/****** Object:  Table [dbo].[card]    Script Date: 01/21/2006 04:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[card](
	[cno] [int] NOT NULL,
	[name] [nvarchar](10) NULL,
	[class] [nvarchar](8) NULL,
 CONSTRAINT [PK_card] PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrow]    Script Date: 01/21/2006 04:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrow](
	[cno] [int] NULL,
	[bno] [int] NULL,
	[jdate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 01/21/2006 04:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[bno] [int] NOT NULL,
	[bname] [nvarchar](10) NULL,
	[author] [nvarchar](10) NULL,
	[price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[bno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
