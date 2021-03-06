
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[outdetail](
	[outid] [int] NULL,
	[gid] [int] NULL,
	[outamt] [int] NULL,
	[month] [nvarchar](10) NULL,
	[deptno] [int] NULL
) ON [PRIMARY]
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[indetail](
	[inid] [int] NULL,
	[gid] [int] NULL,
	[inamt] [int] NULL,
	[month] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goods]    Script Date: 12/28/2017 20:24:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goods](
	[gid] [int] NOT NULL,
	[gname] [nvarchar](10) NULL,
	[unit] [nvarchar](5) NULL,
	[spec] [nvarchar](10) NULL,
	[price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_goods] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dept2]    Script Date: 12/28/2017 20:24:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept2](
	[deptno] [int] NOT NULL,
	[dname] [nvarchar](10) NULL,
 CONSTRAINT [PK_dept2] PRIMARY KEY CLUSTERED 
(
	[deptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
