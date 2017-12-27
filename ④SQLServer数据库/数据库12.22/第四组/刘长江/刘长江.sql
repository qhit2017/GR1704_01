SELECT * FROM emp
  
--1.查询所有有人的部门编号：
SELECT DISTINCT a.DEPTNO
from emp a
WHERE  a.ENAME IS NOT null
--2.查询所有岗位名称：
SELECT DISTINCT b.JOB
from emp b 
--3.查询所有20部门的员工姓名，编号及薪水 
SELECT c.ENAME,c.SAL
from emp c
WHERE c.DEPTNO =20
--4.查询所有薪水超过两千的员工信息 
SELECT *
from emp d
where d.SAL >=2000
--5.查询所有有奖金的员工信息 
SELECT *
FROM emp e
where e.COMM IS NOT NULL AND e.COMM!=0
--6.查询所有没有奖金的员工信息 
SELECT *
from emp f
WHERE f.COMM IS  NULL or f.COMM=0
--7.查询最高领导的员工信息 
SELECT *
from emp g
where g.MGR IS null
--8.查询所有81年之后入职的员工信息 
SELECT *
from emp h
WHERE h.HIREDATE>'1981'
--9.查询所有薪水在2000-4000范围内的员工信息 
SELECT *
from emp i
where i.SAL>2000 AND i.SAL<4000
--10.查询所有部门编号是10或30的员工信息 
SELECT *
from emp j
where j.DEPTNO=10 OR j.DEPTNO=30
--11.查询所有20部门并且薪水超过2000的员工信息： 
SELECT *
from emp k
where k.DEPTNO=20AND k.SAL>2000
--12.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
from emp l
where l.SAL<2000 or l.SAL>4000
--13.查询所有部门编号不是10，30的员工信息 
SELECT *
from emp m
where m.DEPTNO!=10 AND m.DEPTNO!=30
--14.查询用户名为scott的员工信息：注意区分大小写
SELECT *
from emp n
where n.ENAME ='SCOTT'
--15.查询姓名里面包含ALL的员工姓名 
SELECT o.ENAME
from emp o
where o.ENAME LIKE '%ALL%'
--16.查询所有以”S”开头的同学 
SELECT p.ENAME
from emp p
where p.ENAME like's%'
--17.查询第二个字母为A的员工姓名 
SELECT q.ENAME
from emp q
where q.ENAME LIKE '_A%'
--18.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列
SELECT r.EMPNO,r.ENAME,r.DEPTNO,r.JOB,r.SAL
from emp r
ORDER BY r.sal DESC
 
