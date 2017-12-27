USE [12.19]
GO
/****** Object:  Table [dbo].[EMP]    Script Date: 12/21/2017 15:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMP](
	[EMPNO] [int] NOT NULL,
	[ENAME] [nvarchar](10) NULL,
	[JOB] [nvarchar](9) NULL,
	[MGR] [int] NULL,
	[HIREDATE] [date] NULL,
	[SAL] [int] NULL,
	[COMM] [int] NULL,
	[DEPTNO] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7369, N'SMITH', N'CLERK', 7902, CAST(0xDD080B00 AS Date), 800, NULL, 20)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7499, N'ALLEN', N'SALESMAN', 7698, CAST(0x1E090B00 AS Date), 1600, 300, 30)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7521, N'WARD', N'SALESMAN', 7698, CAST(0x20090B00 AS Date), 1250, 500, 30)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7566, N'JONES', N'MANAGER', 7839, CAST(0x47090B00 AS Date), 2975, NULL, 20)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7654, N'MARTIN', N'SALESMAN', 7698, CAST(0xFA090B00 AS Date), 1250, 1400, 30)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7698, N'BLAKE', N'MANAGER', 7839, CAST(0x64090B00 AS Date), 2850, NULL, 30)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7782, N'CLARK', N'MANAGER', 7839, CAST(0x8B090B00 AS Date), 2450, NULL, 10)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7788, N'SCOTT', N'ANALYST', 7566, CAST(0x1E120B00 AS Date), 3000, NULL, 20)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7839, N'KING', N'PRESIDENT', NULL, CAST(0x2C0A0B00 AS Date), 5000, NULL, 10)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7844, N'TURNER', N'SALESMAN', 7698, CAST(0xE6090B00 AS Date), 1500, 0, 30)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7876, N'ADAMS', N'CLERK', 7788, CAST(0x3C120B00 AS Date), 1100, NULL, 20)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7900, N'JAMES', N'CLERK', 7698, CAST(0x3C0A0B00 AS Date), 950, NULL, 30)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7902, N'FORD', N'ANALYST', 7566, CAST(0x3C0A0B00 AS Date), 3000, NULL, 20)
INSERT [dbo].[EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (7934, N'MILLER', N'CLERK', 7782, CAST(0x6F0A0B00 AS Date), 1300, NULL, 10)
/****** Object:  Table [dbo].[DEPT]    Script Date: 12/21/2017 15:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPT](
	[DEPTNO] [int] NULL,
	[DNAME] [nvarchar](14) NULL,
	[LOC] [nvarchar](13) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DEPT] ([DEPTNO], [DNAME], [LOC]) VALUES (10, N'ACCOUNTING', N'NEW YORK')
INSERT [dbo].[DEPT] ([DEPTNO], [DNAME], [LOC]) VALUES (20, N'RESEARCH', N'DALLAS')
INSERT [dbo].[DEPT] ([DEPTNO], [DNAME], [LOC]) VALUES (30, N'SALES', N'CHICAGO')
INSERT [dbo].[DEPT] ([DEPTNO], [DNAME], [LOC]) VALUES (40, N'OPERATIONS', N'BOSTON')
SELECT*FROM EMP

--1.查询所有的部门编号： 
SELECT  C.DEPTNO
FROM EMP C

--2.查询所有有人的部门编号
SELECT DISTINCT C.DEPTNO
FROM EMP C
WHERE C.COMM IS NOT NULL 

--3.查询所有岗位名称： 
SELECT  A.JOB
FROM EMP A

--4.查询所有薪水超过两千的员工信息 
SELECT  *
FROM EMP C
WHERE C.SAL>2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT C.ENAME,C.EMPNO ,C.SAL
FROM EMP C
WHERE C.DEPTNO=20


--6.查询所有没有奖金的员工信息 
SELECT *
FROM EMP C
WHERE C.COMM IS NULL OR C.COMM=0

--7.查询所有有奖金的员工信息 
SELECT *
FROM EMP C
WHERE C.COMM IS NOT NULL AND C.COMM!=0

--8.查询最高领导的员工信息 
SELECT *
FROM EMP C
WHERE C.MGR IS NULL

--9.查询所有81年之后入职的员工信息
SELECT *
FROM EMP C
 WHERE C.HIREDATE>'1918-1-1'

--10.查询所有薪水在2000-4000范围内的员工信息
SELECT *
FROM EMP C
WHERE C.SAL>=2000 AND C.SAL<=4000
 

--11.查询所有部门编号是10或30的员工信息 
SELECT *
FROM EMP C
WHERE C.DEPTNO=10 OR C.DEPTNO=30



--12.查询所有20部门并且薪水超过2000的员工信息：
SELECT *
FROM EMP C
 WHERE  C.DEPTNO=20 AND C.SAL >2000

--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
FROM EMP C
WHERE C.SAL<2000 OR C.SAL>4000


--14.查询所有部门编号不是10，30的员工信息 
SELECT *
FROM EMP C
WHERE C.DEPTNO!=10AND C.DEPTNO!=30

--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
FROM EMP C
WHERE C.ENAME='SCOTT'


--16.查询姓名里面包含ALL的员工姓名 
SELECT C.ENAME
FROM EMP C
WHERE C.ENAME LIKE '%ALL%'



--17.查询所有以”S”开头的同学 
SELECT  *
FROM EMP D 
WHERE D.ENAME LIKE 'S%'

--18.查询第二个字母为A的员工姓名 
SELECT*
FROM EMP N
WHERE  N.ENAME LIKE '_A%'


--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列 
SELECT c.EMPNO,C.ENAME,C.DEPTNO,C.JOB,C.SAL
FROM EMP C
ORDER BY C.SAL DESC

--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列 


--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列 
SELECT S.ENAME,S.EMPNO,S.SAL
FROM EMP S
WHERE S.ENAME  LIKE  '%A%'
ORDER BY S.SAL DESC 




