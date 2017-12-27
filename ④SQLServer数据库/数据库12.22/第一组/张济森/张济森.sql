SELECT * FROM emp
--1.查询所有的部门编号
 SELECT DISTINCT a.DEPTNO as '部门编号'
 from emp a  
--2.查询所有有人的部门编号：
SELECT DISTINCT b.DEPTNO
from emp b
WHERE  b.ENAME IS NOT null
--3.查询所有岗位名称：
SELECT DISTINCT c.JOB
from emp c
--4.查询所有薪水超过两千的员工信息 
SELECT *
from emp d
where d.SAL >=2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT a.ENAME,a.SAL
from emp a
WHERE a.DEPTNO =20
--6.查询所有没有奖金的员工信息 
SELECT *
from emp a 
WHERE a.COMM IS  NULL or a.COMM=0
--7.查询所有有奖金的员工信息 
SELECT *
FROM emp a 
where a.COMM IS NOT NULL AND a.COMM!=0
--8.查询最高领导的员工信息 
SELECT *
from emp a
where a.MGR IS null
--9.查询所有81年之后入职的员工信息 
SELECT *
from emp a
WHERE a.HIREDATE>'1981'
--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT *
from emp a
where a.SAL>2000 AND a.SAL<4000
--11.查询所有部门编号是10或30的员工信息 
SELECT *
from emp a
where a.DEPTNO=10 OR a.DEPTNO=30
--12.查询所有20部门并且薪水超过2000的员工信息： 
SELECT *
from emp a
where a.DEPTNO=20AND a.SAL>2000
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
from emp a
where a.SAL<2000 or a.SAL>4000
--14.查询所有部门编号不是10，30的员工信息 
SELECT *
from emp a
where a.DEPTNO!=10 AND a.DEPTNO!=30
--15.查询用户名为scott的员工信息：注意区分大小写
SELECT *
from emp a
where a.ENAME ='SCOTT'
--16.查询姓名里面包含ALL的员工姓名 
SELECT a.ENAME
from emp a
where a.ENAME LIKE '%ALL%'
--17.查询所有以”S”开头的同学 
SELECT a.ENAME
from emp a
where a.ENAME like's%'
--18.查询第二个字母为A的员工姓名 
SELECT a.ENAME
from emp a
where a.ENAME LIKE '_A%'






