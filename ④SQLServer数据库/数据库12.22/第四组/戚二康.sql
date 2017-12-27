SELECT*FROM EMP
--1.查询所有的部门编号：
SELECT a.DEPTNO
from EMP a
--2.查询所有有人的部门编号： 
SELECT  DISTINCT a.DEPTNO
from EMP a
WHERE a.COMM is not NULL 
--3.查询所有岗位名称： 
SELECT a.JOB
from EMP a
--4.查询所有薪水超过两千的员工信息 
SELECT a.EMPNO,a.ENAME,a.JOB,a.MGR,a.HIREDATE,a.SAL,a.COMM,a.DEPTNO
from EMP a
WHERE a.SAL>2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT a.ENAME, a.EMPNO,a.SAL 
from EMP a
WHERE a.DEPTNO=20
--6.查询所有没有奖金的员工信息 
SELECT *
from EMP a
WHERE a.COMM IS NULL OR a.COMM=0
--7.查询所有有奖金的员工信息 
SELECT *
from EMP a
WHERE a.COMM IS NOT NULL AND a.COMM!=0
--8.查询最高领导的员工信息 
SELECT *
from EMP a
WHERE a.MGR IS NULL
--9.查询所有81年之后入职的员工信息 
SELECT*
FROM EMP a
where a.HIREDATE>'1981-1-1'
--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT*
FROM EMP a
WHERE a.SAL>=2000 AND a.SAL<=4000
--11.查询所有部门编号是10或30的员工信息 
SELECT*
FROM EMP a
WHERE a.DEPTNO=10 OR a.DEPTNO=30
--12.查询所有20部门并且薪水超过2000的员工信息： 
SELECT*
FROM EMP a
WHERE a.DEPTNO=20AND a.SAL>2000
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT*
FROM EMP a
WHERE a.SAL <2000 OR a.SAL>4000
--14.查询所有部门编号不是10，30的员工信息 
SELECT*
from EMP a
WHERE a.DEPTNO!=10AND a.DEPTNO!=30
--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT*
FROM EMP a
WHERE a.ENAME='scott'
--16.查询姓名里面包含ALL的员工姓名 
SELECT a.ENAME
from EMP a
where a.ENAME LIKE '%ALL%'
--17.查询所有以”S”开头的同学 
SELECT *
from EMP a
where a.ENAME LIKE 'S%'
--18.查询第二个字母为A的员工姓名
 SELECT *
from EMP a
where a.ENAME LIKE '_A%'
--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列 
SELECT a.EMPNO,a.ENAME,a.DEPTNO,a.JOB,a.SAL
FROM EMP a
ORDER BY a.SAL DESC
--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列 
 SELECT a.ENAME,a.EMPNO,a.SAL
from EMP a
where a.ENAME LIKE '%A%'
ORDER BY a.SAL DESC
