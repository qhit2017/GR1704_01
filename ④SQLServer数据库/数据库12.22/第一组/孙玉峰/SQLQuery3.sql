SELECT*FROM EMP
--1.查询所有的部门编号：
SELECT a.DEPTNO
from EMP a
--2.查询所有有人的部门编号： 
SELECT  DISTINCT b.DEPTNO
from EMP b
WHERE b.COMM is not NULL 
--3.查询所有岗位名称： 
SELECT c.JOB
from EMP c
--4.查询所有薪水超过两千的员工信息 
SELECT *
from EMP d
WHERE d.SAL>2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT e.EMPNO,e.SAL 
from EMP e
WHERE e.DEPTNO=20
--6.查询所有没有奖金的员工信息 
SELECT *
from EMP f
WHERE f.COMM IS NULL OR f.COMM=0
--7.查询所有有奖金的员工信息 
SELECT *
from EMP g
WHERE g.COMM IS NOT NULL AND g.COMM!=0
--8.查询最高领导的员工信息 
SELECT *
from EMP h
WHERE h.MGR IS NULL
--9.查询所有81年之后入职的员工信息 
SELECT*
FROM EMP i
where i.HIREDATE>'1981-1-1'
--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT*
FROM EMP j
WHERE j.SAL>=2000 AND j.SAL<=4000
--11.查询所有部门编号是10或30的员工信息 
SELECT*
FROM EMP k
WHERE k.DEPTNO=10 OR k.DEPTNO=30
--12.查询所有20部门并且薪水超过2000的员工信息： 
SELECT*
FROM EMP l
WHERE l.DEPTNO=20AND l.SAL>2000
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT*
FROM EMP m
WHERE m.SAL <2000 OR m.SAL>4000
--14.查询所有部门编号不是10，30的员工信息 
SELECT*
from EMP n
WHERE n.DEPTNO!=10AND n.DEPTNO!=30
--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT*
FROM EMP o
WHERE o.ENAME='scott'
--16.查询姓名里面包含ALL的员工姓名 
SELECT p.ENAME
from EMP p
where p.ENAME LIKE '%ALL%'
--17.查询所有以”S”开头的同学 
SELECT *
from EMP q
where q.ENAME LIKE 'S%'
--18.查询第二个字母为A的员工姓名
 SELECT *
from EMP r
where r.ENAME LIKE '_A%'
--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列 
SELECT s.EMPNO,s.ENAME,s.DEPTNO,s.JOB,s.SAL
FROM EMP s
ORDER BY s.SAL DESC