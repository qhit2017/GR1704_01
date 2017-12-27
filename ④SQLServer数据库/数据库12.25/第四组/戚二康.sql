--1.查询部门名称是‘SALES’的员工信息 
SELECT*
from DEPT a
where a.DNAME='sales'
--2.查询公司中薪水最高的员工信息 
SELECT*
from EMP a
where a.SAL=(SELECT  MAX(a.SAL)
from EMP a )                   
--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT a.EMPNO,a.ENAME
from EMP a
where a.SAL in (SELECT MAX(a.SAL)
from EMP a
GROUP BY a.DEPTNO)
--4.查询各部门最高薪水的员工信息 
SELECT*
from EMP a
where a.SAL in (SELECT MAX(a.SAL)
from EMP a
GROUP BY a.DEPTNO)
--5.查询薪水大于该部门平均薪水的员工信息 
SELECT  AVG(a.SAL) from EMP a GROUP BY a.DEPTNO
SELECT *
from EMP a
where a.SAL>2916 OR a.SAL>2175 OR a.SAL>1566
--6.查询部门名称是‘SALES’的员工信息
 SELECT*
from DEPT a
where a.DNAME='sales'
--7.查询领导者是‘BLAKE’的员工信息 
SELECT*
from EMP a
where a.ENAME='BLAKE'
--8.查询和SMITH工作相同的员工信息 
SELECT *
FROM EMP A
WHERE A.JOB=(SELECT A.JOB 
 FROM EMP A
 WHERE A.ENAME='SMITH')
--9.查询平均工资比10部门低的部门编号 
SELECT A.DEPTNO
FROM EMP A 
GROUP BY A.DEPTNO
HAVING AVG(A.SAL) <(SELECT AVG(A.SAL) 
FROM EMP A
WHERE A.DEPTNO=10)
--10.查询在NEW YORK工作的所有员工 
SELECT*
FROM DEPT A
WHERE A.LOC='NEW YORK'
