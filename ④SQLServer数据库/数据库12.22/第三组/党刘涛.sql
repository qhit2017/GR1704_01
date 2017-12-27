--dept 部门表
SELECT * FROM DEPT
--1.查询所有的部门编号： 
SELECT q.DEPTNO
from DEPT q
--2.查询所有有人的部门编号： 
SELECT e.DNAME,e.DEPTNO
from DEPT e
--3.查询所有岗位名称：
SELECT c.JOB
from EMP c
 
--4.查询所有薪水超过两千的员工信息 
SELECT *
from EMP d
 WHERE d.SAL>2000	
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT *
from EMP f
 WHERE f.DEPTNO='20'

--6.查询所有没有奖金的员工信息 
SELECT *
 from  EMP x
 WHERE x.COMM IS NULL

--7.查询所有有奖金的员工信息 
SELECT *
FROM EMP v
 WHERE v.COMM IS NOT NULL 

--8.查询最高领导的员工信息 
SELECT TOP 1 *
from EMP z
 ORDER BY z.MGR DESC
 
 SELECT *
 from EMP s
  WHERE s.MGR IS NULL

--9.查询所有81年之后入职的员工信息 
SELECT *
FROM  EMP b
 WHERE b.HIREDATE>'1981-01-01'

--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT *
FROM EMP g
 WHERE g.SAL>2000AND g.SAL<4000 

--11.查询所有部门编号是10或30的员工信息 
SELECT *
FROM EMP m
 WHERE m.DEPTNO='10' OR m.DEPTNO='30'

--12.查询所有20部门并且薪水超过2000的员工信息：
SELECT *
FROM EMP l
 WHERE l.DEPTNO='20'AND l.SAL>2000 

--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
FROM EMP p
 WHERE p.SAL NOT IN(2000,4000)
--14.查询所有部门编号不是10，30的员工信息 
SELECT *
FROM EMP t
 WHERE t.DEPTNO NOT IN(10,30)

--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
FROM EMP k
 WHERE k.ENAME='scott'
--16.查询姓名里面包含ALL的员工姓名 
SELECT *
FROM EMP r
 WHERE r.ENAME LIKE '%ALL%'

--17.查询所有以”S”开头的同学
SELECT *
FROM EMP U
 WHERE U.ENAME LIKE 's%' 

--18.查询第二个字母为A的员工姓名 
SELECT *
from EMP h
 WHERE h.ENAME LIKE '_A%'

--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列
SELECT y.EMPNO,y.ENAME,y.DEPTNO,y.JOB
FROM EMP y
 ORDER BY y.SAL DESC

--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列 
SELECT *
FROM EMP j
 
 ORDER BY j.DEPTNO DESC,j.SAL ASC


--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列 
SELECT *
FROM EMP i
 WHERE i.ENAME LIKE'%a%'

--22.查询年收入超过10000的员工的姓名，编号，薪水，年收入，按照年收入降序排列 
SELECT a.ENAME,a.EMPNO,a.SAL,a.SAL*12+a.COMM
FROM EMP a
 WHERE a.SAL*12+a.COMM>10000
 ORDER BY a.SAL*12 DESC
--23.查询年薪超过10000的员工的姓名，编号，薪水，年收入，按照年薪降序排列 
SELECT o.ENAME,o.EMPNO,o.SAL,o.SAL*12
FROM EMP o
 WHERE o.SAL*12>10000
 ORDER BY o.SAL*12 DESC
 
 
