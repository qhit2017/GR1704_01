

CREATE TABLE [dbo].[goods](
	[gid] [int] NOT NULL,
	[gname] [nvarchar](10) NULL,
	[unit] [nvarchar](5) NULL,
	[spec] [nvarchar](10) NULL,
	[price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_goods] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (1, N'饼干', N'包', N'好吃点', CAST(12.90 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (2, N'饼干', N'包', N'奥利奥', CAST(21.60 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (3, N'山楂片', N'包', N'800g', CAST(5.40 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (4, N'山楂片', N'包', N'1.5kg', CAST(10.50 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (5, N'面包', N'包', N'华福', CAST(3.50 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (6, N'面包', N'包', N'美心', CAST(5.50 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (7, N'瓜子', N'包', N'500g', CAST(6.50 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (8, N'瓜子', N'包', N'1kg', CAST(11.80 AS Decimal(10, 2)))
INSERT [dbo].[goods] ([gid], [gname], [unit], [spec], [price]) VALUES (9, N'火腿肠', N'包', N'双汇', CAST(12.60 AS Decimal(10, 2)))

CREATE TABLE [dbo].[dept](
	[deptno] [int] NOT NULL,
	[dname] [nvarchar](10) NULL,
 CONSTRAINT [PK_dept] PRIMARY KEY CLUSTERED 
(
	[deptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[dept] ([deptno], [dname]) VALUES (10, N'财务部')
INSERT [dbo].[dept] ([deptno], [dname]) VALUES (20, N'生产部')
INSERT [dbo].[dept] ([deptno], [dname]) VALUES (30, N'设备部')
INSERT [dbo].[dept] ([deptno], [dname]) VALUES (40, N'技术部')

CREATE TABLE [dbo].[outdetail](
	[outid] [int] NOT NULL,
	[gid] [int] NULL,
	[outamt] [int] NULL,
	[month] [nvarchar](10) NULL,
	[deptno] [int] NULL,
 CONSTRAINT [PK_outdetail] PRIMARY KEY CLUSTERED 
(
	[outid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (1, 1, 5, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (2, 1, 8, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (3, 1, 16, N'2017年6月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (4, 1, 20, N'2017年6月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (5, 2, 6, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (6, 2, 8, N'2017年5月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (7, 2, 12, N'2017年5月', 30)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (8, 2, 16, N'2017年6月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (9, 2, 18, N'2017年6月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (10, 2, 15, N'2017年6月', 30)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (11, 3, 6, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (12, 3, 8, N'2017年5月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (13, 3, 8, N'2017年5月', 30)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (14, 3, 6, N'2017年5月', 40)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (15, 4, 10, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (16, 4, 20, N'2017年5月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (17, 5, 8, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (18, 5, 10, N'2017年6月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (19, 5, 20, N'2017年7月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (20, 6, 10, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (21, 6, 15, N'2017年6月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (22, 6, 8, N'2017年5月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (23, 6, 4, N'2017年6月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (24, 7, 9, N'2017年5月', 30)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (25, 7, 6, N'2017年5月', 40)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (26, 8, 10, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (27, 8, 15, N'2017年5月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (28, 8, 20, N'2017年5月', 30)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (29, 9, 5, N'2017年5月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (30, 9, 6, N'2017年6月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (31, 9, 8, N'2017年6月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (32, 9, 4, N'2017年7月', 10)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (33, 9, 6, N'2017年7月', 20)
INSERT [dbo].[outdetail] ([outid], [gid], [outamt], [month], [deptno]) VALUES (34, 9, 8, N'2017年7月', 30)

CREATE TABLE [dbo].[indetail](
	[inid] [int] NOT NULL,
	[gid] [int] NULL,
	[inamt] [int] NULL,
	[month] [nvarchar](10) NULL,
 CONSTRAINT [PK_indetail] PRIMARY KEY CLUSTERED 
(
	[inid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (1, 1, 20, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (2, 1, 50, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (3, 1, 70, N'2017年7月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (4, 2, 100, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (5, 2, 200, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (6, 3, 30, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (7, 3, 60, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (8, 3, 40, N'2017年7月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (9, 4, 50, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (10, 4, 60, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (11, 5, 30, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (12, 5, 90, N'2017年7月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (13, 6, 40, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (14, 6, 90, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (15, 7, 55, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (16, 7, 62, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (17, 7, 30, N'2017年7月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (18, 8, 100, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (19, 9, 45, N'2017年5月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (20, 9, 65, N'2017年6月')
INSERT [dbo].[indetail] ([inid], [gid], [inamt], [month]) VALUES (21, 9, 75, N'2017年7月')

ALTER TABLE [dbo].[indetail]  WITH CHECK ADD  CONSTRAINT [FK_indetail_goods] FOREIGN KEY([gid])
REFERENCES [dbo].[goods] ([gid])

ALTER TABLE [dbo].[indetail] CHECK CONSTRAINT [FK_indetail_goods]

ALTER TABLE [dbo].[outdetail]  WITH CHECK ADD  CONSTRAINT [FK_outdetail_dept] FOREIGN KEY([deptno])
REFERENCES [dbo].[dept] ([deptno])

ALTER TABLE [dbo].[outdetail] CHECK CONSTRAINT [FK_outdetail_dept]

ALTER TABLE [dbo].[outdetail]  WITH CHECK ADD  CONSTRAINT [FK_outdetail_outdetail] FOREIGN KEY([outid])
REFERENCES [dbo].[outdetail] ([outid])

ALTER TABLE [dbo].[outdetail] CHECK CONSTRAINT [FK_outdetail_outdetail]

ALTER TABLE [dbo].[outdetail]  WITH CHECK ADD  CONSTRAINT [FK_outdetail_outdetail1] FOREIGN KEY([outid])
REFERENCES [dbo].[outdetail] ([outid])

ALTER TABLE [dbo].[outdetail] CHECK CONSTRAINT [FK_outdetail_outdetail1]

