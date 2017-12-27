SELECT *FROM EMP
--1.查询部门名称是‘SALES’的员工信息
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--2.查询公司中薪水最高的员工信息 
SELECT max(a.SAL)
from EMP a

SELECT*
FROM EMP b
	WHERE b.SAL=(SELECT max(a.SAL)
	from EMP a)
--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT a.EMPNO,a.ENAME
from EMP a
WHERE a.SAL IN(SELECT max(a.SAL)
from EMP a 
GROUP BY a.DEPTNO)
--4.查询各部门最高薪水的员工信息  
SELECT*
from EMP a
WHERE a.SAL IN(SELECT max(a.SAL)
from EMP a 
GROUP BY a.DEPTNO)
--5.查询薪水大于该部门平均薪水的员工信息 
--6.查询部门名称是‘SALES’的员工信息
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--7.查询领导者是‘BLAKE’的员工信息 
SELECT* 
from EMP a
WHERE a.ENAME = ('BLAKE')
SELECT *
FROM EMP b
WHERE b.MGR=(SELECT a.EMPNO 
from EMP a
WHERE a.ENAME ='BLAKE')
--8.查询和SMITH工作相同的员工信息 
SELECT*
from EMP a
WHERE a.ENAME='SMITH'

SELECT*
FROM EMP b
WHERE b.JOB=(SELECT a.JOB
from EMP a
WHERE a.ENAME='SMITH')
--9.查询平均工资比10部门低的部门编号 
SELECT AVG(a.SAL)
FROM EMP a
WHERE a.DEPTNO='10'
SELECT W.DEPTNO
 FROM EMP W
 GROUP BY W.DEPTNO
  HAVING AVG(W.SAL)<(SELECT AVG(F.SAL)
FROM EMP F
 WHERE F.DEPTNO='10')
--10.查询在NEW YORK工作的所有员工 
SELECT a.DEPTNO
from DEPT a
WHERE a.DNAME='NEWYORK'
--11.查询10号部门的员工在整个公司中所占的比例：4
--12、查询比普通员工的最高薪水还要高的领导者姓名
--13、找出薪水最高的五个人
 SELECT TOP 5a.ENAME
 from EMP a
  ORDER BY a.SAL DESC 
 

