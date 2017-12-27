SELECT*FROM emp



--1.查询所有的部门编号： 
SELECT a.deptno as'部门编号'
from emp a

--2.查询所有有人的部门编号：
SELECT b.deptno 
from emp b

--3.查询所有岗位名称：
SELECT c.job AS '岗位名称'
from emp c

--4.查询所有薪水超过两千的员工信息 
SELECT *
from emp d
WHERE d.sal >2000

--5.查询所有20部门的员工姓名，编号及薪水
SELECT e.ename, e.deptno,e.sal
from emp e
WHERE e.deptno=20

--6.查询所有没有奖金的员工信息 
SELECT *
from emp f
WHERE f.comm IS NULL

--7.查询所有有奖金的员工信息
SELECT*
from emp j
WHERE j.comm is NOT NULL
 
--8.查询最高领导的员工信息
SELECT*
from emp q
WHERE q.mgr IS NULL

--9.查询所有81年之后入职的员工信息 
SELECT*
from EMP w
WHERE w.HIREDATE>1980-01-01


--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT *
from EMP r
WHERE r.SAL >2000AND r.SAL<4000

--11.查询所有部门编号是10或30的员工信息
SELECT *
from EMP t
WHERE t.DEPTNO=10 or t.DEPTNO=30
 
--12.查询所有20部门并且薪水超过2000的员工信息：
SELECT*
from EMP y
where y.DEPTNO=20AND y.SAL>2000
 
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT*
from EMP u
WHERE u.SAL<2000OR u.SAL>4000

--14.查询所有部门编号不是10，30的员工信息
SELECT*
from EMP i
WHERE  i.DEPTNO!=10AND i.DEPTNO!=30

--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT
from EMP o
WHERE

--16.查询姓名里面包含ALL的员工姓名
SELECT m.ENAME
from EMP m
WHERE m.ENAME LIKE '%ALL%'

--17.查询所有以”S”开头的同学
SELECT *
from EMP v
where v.ENAME LIKE 's%'
 

--18.查询第二个字母为A的员工姓名
SELECT*
from EMP m
WHERE m.ENAME LIKE '_A%'
 

--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列
SELECT x.EMPNO,x.ENAME,x.MGR,x.JOB,x.MGR
FROM EMP x
ORDER BY x.SAL DESC

 

--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列 
SELECT *
from EMP k
ORDER BY k.DEPTNO

--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列
SELECT n.ENAME,N.EMPNO,N.SAL
from EMP n 
WHERE n.ENAME LIKE'%A%'
ORDER BY n.SAL DESC


--22.查询年收入超过10000的员工的姓名，编号，薪水，年收入，按照年收入降序排列 

--23.查询年薪超过10000的员工的姓名，编号，薪水，年收入，按照年薪降序排列 


