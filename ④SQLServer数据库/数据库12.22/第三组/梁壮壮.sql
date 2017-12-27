--1.查询所有的部门编号： 
SELECT d.deptno
from emp d
--2.查询所有有人的部门编号：
SELECT a.deptno
from emp a
where a.deptno IS NOT NULL
--3.查询所有岗位名称：
SELECT b.job
from emp b
--4.查询所有薪水超过两千的员工信息 
SELECT *
from emp c
where c.comm+c.sal>2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT d.ename,d.empno,d.sal
from emp d
where d.deptno=20
--6.查询所有没有奖金的员工信息
SELECT *
from emp e
where e.comm IS  NULL
--7.查询所有有奖金的员工信息 
SELECT*
from emp f
where f.comm IS NOT NULL 
--8.查询最高领导的员工信息 
SELECT*
from emp g
WHERE g.mgr IS null
--9.查询所有81年之后入职的员工信息 
SELECT h.hiredate,h.ename
from emp h
where h.hiredate>='1981'
--10 查询所有薪水在2000-4000范围内的员工信息 

SELECT *
from emp o
WHERE o.sal >2000 AND o.sal<4000


select *from  emp

--11.查询所有部门编号是10或30的员工信息 
SELECT*
from emp j
where j.deptno=10 OR j.deptno=30
--12.查询所有20部门并且薪水超过2000的员工信息： 

SELECT *
from emp k
where  k.deptno=20 and k.sal>2000
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
from emp i
WHERE i.sal<2000 AND  i.sal<4000
--14.查询所有部门编号不是10，30的员工信息

SELECT*
from emp j
where j.deptno!=10 AND  j.deptno!=30

--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
from emp m
where m.ename='scott'
--16.查询姓名里面包含ALL的员工姓名 
SELECT*
from emp b
where b.ename LIKE '%ALL%'
--17.查询所有以”S”开头的同学 
SELECT*
from emp z
where z.ename LIKE 's%'
--18.查询第二个字母为A的员工姓名 
SELECT*
from emp x
where x.ename LIKE '_a%'









