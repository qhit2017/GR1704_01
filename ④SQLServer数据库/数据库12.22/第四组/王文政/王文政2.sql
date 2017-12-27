--1.查询所有的部门编号
SELECT  a.DEPTNO as'部门编号'
from EMP a

--2.查询所有有人的部门编号
SELECT b.DEPTNO as'部门编号'
from EMP b
WHERE b.DEPTNO IS NOT NULL

--3.查询所有岗位名称
SELECT c.DNAME as'岗位名称'
from DEPT c

--4.查询所有薪水超过两千的员工信息
SELECT d.ENAME,d.SAL
from EMP d
WHERE d.SAL >2000

--5.查询所有20部门的员工姓名，编号及薪水
SELECT  e.ENAME,e.EMPNO,e.SAL
from emp e
WHERE e.DEPTNO =20

--6.查询所有没有奖金的员工信息
SELECT *
from emp f
where f.COMM IS null

--7.查询所有有奖金的员工信息
SELECT *
from EMP g
WHERE g.COMM IS NOT null

--8.查询最高领导的员工信息
SELECT *
from EMP h
where h.MGR IS null

--9.查询所有81年之后入职的员工信息
SELECT *
from emp i
where i.HIREDATE>'1981-1-1'

--10.查询所有薪水在2000-4000范围内的员工信息
SELECT *
from EMP j
where j.SAL>2000 AND j.SAL<4000

--11.查询所有部门编号是10或30的员工信息
SELECT *
from EMP k
WHERE k.DEPTNO=10 OR k.DEPTNO=30

--12.查询所有20部门并且薪水超过2000的员工信息
SELECT *
from emp l
where l.DEPTNO=20 AND l.SAL>2000

--13.查询所有薪水不在2000-4000范围内的员工信息
SELECT *
from emp m
where m.SAL<2000 or m.SAL>4000

--14.查询所有部门编号不是10，30的员工信息
SELECT *
from  EMP n
where n.DEPTNO!=10 AND n.DEPTNO!=30

--15.查询用户名为scott的员工信息：注意区分大小写
SELECT *
from EMP o
where o.ENAME='scott'

--16.查询姓名里面包含ALL的员工姓名
SELECT p.ENAME
from EMP p
where p.ENAME LIKE '%ALL%'

--17.查询所有以”S”开头的同学
SELECT r.ENAME
from EMP r
where r.ENAME LIKE 'S%'

--18.查询第二个字母为A的员工姓名
SELECT s.ENAME
from EMP s
where s.ENAME LIKE '_A%'

--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列
SELECT t.EMPNO,t.ENAME,t.DEPTNO,t.JOB,t.SAL
from EMP t
ORDER BY t.SAL desc

--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列
SELECT *
from EMP u
ORDER BY u.DEPTNO DESC,u.SAL

--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列
SELECT v.ENAME,v.EMPNO,v.SAL
from EMP v
WHERE v.ENAME LIKE '%A%'
ORDER BY v.SAL desc

--22.查询年收入超过10000的员工的姓名，编号，薪水，年收入，按照年收入降序排列
SELECT w.ENAME,w.EMPNO,w.SAL,(w.SAL*12+w.COMM) as'年收入'
from EMP w
WHERE (w.SAL*12)>10000
ORDER BY (w.SAL*12+w.COMM)desc

--23.查询年薪超过10000的员工的姓名，编号，薪水，年收入，按照年薪降序排列
SELECT z.ENAME,z.EMPNO,z.SAL,(z.SAL*12)
from EMP z
WHERE (z.SAL*12)>10000
ORDER BY (z.SAL*12) desc
