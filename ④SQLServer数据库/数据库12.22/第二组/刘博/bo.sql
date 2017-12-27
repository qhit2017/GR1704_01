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

--10.查询所有薪水在2000-4000范围内的员工信息 +
SELECT *
from EMP j
WHERE j.SAL>2000AND

--11.查询所有部门编号是10或30的员工信息 
SELECT *
from EMP k
WHERE k.DEPTNO=10

--12.查询所有20部门并且薪水超过2000的员工信息：

 SELECT *
FROM EMP l
WHERE l.SAL>2000

--13.查询所有薪水不在2000-4000范围内的员工信息
 
SELECT *
from EMP m
WHERE m.SAL<2000 OR m.SAL>4000

--14.查询所有部门编号不是10，30的员工信息 
SELECT *
FROM EMP n
WHERE n.DEPTNO NOT IN 

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


