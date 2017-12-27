SELECT * FROM emp

--1.查询所有的部门编号：
 SELECT a.EMPNO
 from emp a
 --2.查询所有有人的部门编号：
 SELECT b.DEPTNO
 from EMP b
 WHERE b.DEPTNO IS NOT null
 --3.查询所有岗位名称：
 SELECT c.DNAME
 from DEPT c
 --4.查询所有薪水超过两千的员工信息
 SELECT *
 from EMP d
 WHERE d.SAL>2000
 
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT e.ENAME,e.EMPNO,e.SAL
from EMP e
WHERE e.DEPTNO=20
--6.查询所有没有奖金的员工信息 
SELECT *
from EMP f
WHERE f.COMM IS NULL
--7.查询所有有奖金的员工信息 
SELECT *
from EMP g
WHERE g.COMM IS NOT NULL
--8.查询最高领导的员工信息 
SELECT *
from EMP h
where h.MGR IS NULL
--9.查询所有81年之后入职的员工信息
SELECT *
from EMP i
where i.HIREDATE>'1981'
--10.查询所有薪水在2000-4000范围内的员工信息
SELECT *
from EMP j
where j.SAL>2000 AND j.SAL<4000
--11.查询所有部门编号是10或30的员工信息 
 SELECT *
 from DEPT k
 where k.DEPTNO<=10 OR k.DEPTNO<=30
 
--12.查询所有20部门并且薪水超过2000的员工信息：
SELECT *
from EMP l
WHERE l.SAL>2000 AND l.DEPTNO=20

--13.查询所有薪水不在2000-4000范围内的员工信息 
 SELECT*
 FROM EMP m
 WHERE m.SAL<2000 or m.SAL >4000
-- 14.查询所有部门编号不是10，30的员工信息
SELECT*
FROM DEPT  n
WHERE n.DEPTNO NOT IN (10,30)
--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
from EMP q
WHERE q.ENAME='scott'
--16.查询姓名里面包含ALL的员工姓名
SELECT w.ENAME
from EMP w
where w.ENAME LIKE '%ALL%'
--17.查询所有以”S”开头的同学
SELECT w.ENAME
from EMP w
where w.ENAME LIKE 's%'
--18.查询第二个字母为A的员工姓名
SELECT w.ENAME
from EMP w
where w.ENAME LIKE '_A%'
