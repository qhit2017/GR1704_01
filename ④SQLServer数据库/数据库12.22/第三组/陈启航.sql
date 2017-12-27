SELECT*FROM emp


--1.查询所有的部门编号：
SELECT a.EMPNO as'部门编号'
from EMP a 

--2.查询所有有人的部门编号：
SELECT b.EMPNO as'部门',b.ENAME'员工姓名'
from EMP b 

--3.查询所有岗位名称： 
SELECT q.JOB as'岗位名称'
from EMP q

--4.查询所有薪水超过两千的员工信息 
SELECT *
from EMP v
WHERE v.SAL>2000

--5.查询所有20部门的员工姓名，编号及薪水 
SELECT t.ENAME,t.EMPNO,t.SAL
from EMP t
WHERE t.EMPNO =20

--6.查询所有没有奖金的员工信息 
SELECT *
from EMP d
WHERE d.COMM IS NULL

--7.查询所有有奖金的员工信息 
SELECT*
FROM EMP p
WHERE p.COMM IS NOT NULL

--8.查询最高领导的员工信息 
SELECT *
from EMP o
WHERE o.MGR IS NULL

--9.查询所有81年之后入职的员工信息 
SELECT *
from EMP m
WHERE m.HIREDATE>='1981-01-01'


--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT  *
FROM EMP q
 WHERE q.SAL>2000AND q.SAL<4000
--11.查询所有部门编号是10或30的员工信息 
SELECT *
FROM EMP y
 WHERE y.DEPTNO='10'OR y.DEPTNO='30'

--12.查询所有20部门并且薪水超过2000的员工信息： 
SELECT *
FROM EMP p
 WHERE p.DEPTNO='20'AND p.SAL>2000

--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
FROM EMP o
 WHERE o.SAL not IN(2000,4000)

--14.查询所有部门编号不是10，30的员工信息 
SELECT *
FROM EMP j
 WHERE j.DEPTNO NOT IN (10,30)

--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
FROM EMP i
WHERE i.ENAME='scott'

--16.查询姓名里面包含ALL的员工姓名 
SELECT *
FROM EMP i
WHERE i.ENAME LIKE '%ALL%'

--17.查询所有以”S”开头的同学 
SELECT *
FROM EMP i
WHERE i.ENAME LIKE 's%'
--18.查询第二个字母为A的员工姓名 
SELECT *
FROM EMP i
WHERE i.ENAME LIKE '_A%'




