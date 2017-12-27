SELECT * FROM EMP
--1.查询所有的部门编号：
SELECT a.empno
from EMP a

--2.查询所有有人的部门编号： 
SELECT b.deptno 
from EMP b
--3.查询所有岗位名称：
SELECT c.ename
from EMP c
--4.查询所有薪水超过两千的员工信息 
SELECT *
from EMP d
WHERE sal>2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT e.EMPNO,e.ENAME,e.SAL
from EMP e
WHERE DEPTNO=20
--6.查询所有没有奖金的员工信息 
SELECT *
from EMP f
WHERE SAL IS NULL
--7.查询所有有奖金的员工信息 
SELECT *
FROM EMP g
WHERE SAL>0

--8.查询最高领导的员工信息 
SELECT *
FROM EMP h
WHERE MGR IS NULL

--9.查询所有81年之后入职的员工信息 
SELECT *
from EMP i
WHERE i.HIREDATE>'1981-1-1'

--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT *
from EMP j
WHERE j.SAL>2000AND j.SAL<4000

--11.查询所有部门编号是10或30的员工信息 
SELECT *
from EMP k
WHERE k.DEPTNO=10OR k.DEPTNO=30


--12.查询所有20部门并且薪水超过2000的员工信息：
 SELECT *
FROM EMP l
WHERE l.SAL>2000 AND l.DEPTNO=20
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
from EMP m
WHERE m.SAL<2000 OR m.SAL>4000

--14.查询所有部门编号不是10，30的员工信息 
SELECT *
FROM EMP n
WHERE n.DEPTNO NOT IN (10,30)

--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
FROM EMP o
WHERE o.ENAME='SCOTT'
--16.查询姓名里面包含ALL的员工姓名 
SELECT *
FROM EMP P
WHERE P.ENAME='%ALL%'
--17.查询所有以”S”开头的同学 
SELECT *
FROM EMP q
WHERE q.ENAME='S%'
--18.查询第二个字母为A的员工姓名 
SELECT *
FROM EMP r
WHERE r.ENAME='_A%'
--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列 
SELECT s.EMPNO,s.ENAME,s.DEPTNO,s.JOB,s.SAL
from EMP s
ORDER BY s.SAL DESC 
--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列 
SELECT t.EMPNO,t.ENAME,t.DEPTNO,t.JOB,t.SAL
from EMP t
ORDER BY t.SAL 
--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列 

--22.查询年收入超过10000的员工的姓名，编号，薪水，年收入，按照年收入降序排列 

--23.查询年薪超过10000的员工的姓名，编号，薪水，年收入，按照年薪降序排列

