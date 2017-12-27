--1.查询部门名称是‘SALES’的员工信息 
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--2.查询公司中薪水最高的员工信息 
SELECT MAX(S.SAL)
FROM EMP S
SELECT *
FROM EMP Q
 WHERE Q.SAL=(SELECT MAX(S.SAL)
FROM EMP S)

--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT MAX(E.SAL)
FROM EMP E
 GROUP BY E.DEPTNO 
 SELECT Q.EMPNO,Q.ENAME
 FROM EMP Q
 WHERE Q.SAL IN(SELECT MAX(E.SAL)
FROM EMP E
 GROUP BY E.DEPTNO )
--4.查询各部门最高薪水的员工信息 
 SELECT MAX(Q.SAL)
 FROM EMP Q
 GROUP BY Q.DEPTNO
 SELECT  *
 FROM EMP E
  WHERE E.SAL IN (SELECT MAX(Q.SAL)
 FROM EMP Q
  GROUP BY Q.DEPTNO) 

--5.查询薪水大于该部门平均薪水的员工信息
 

--6.查询部门名称是‘SALES’的员工信息 
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--7.查询领导者是‘BLAKE’的员工信息 
SELECT e.EMPNO
from EMP e
 WHERE e.ENAME='BLAKE'
 SELECT *
 FROM EMP W
  WHERE W.MGR=(SELECT e.EMPNO
from EMP e
 WHERE e.ENAME='BLAKE')
--8.查询和SMITH工作相同的员工信息 
 SELECT Q.JOB
 FROM EMP Q
  WHERE Q.ENAME='SMITH'
  SELECT *
  FROM EMP W
   WHERE W.JOB=( SELECT Q.JOB
 FROM EMP Q
  WHERE Q.ENAME='SMITH')

--9.查询平均工资比10部门低的部门编号 
SELECT AVG(F.SAL)
FROM EMP F
 WHERE F.DEPTNO='10'
 SELECT W.DEPTNO
 FROM EMP W
 GROUP BY W.DEPTNO
  HAVING AVG(W.SAL)<(SELECT AVG(F.SAL)
FROM EMP F
 WHERE F.DEPTNO='10')
	

--10.查询在NEW YORK工作的所有员工 
SELECT Q.DEPTNO
FROM DEPT Q
 WHERE Q.DNAME='NEWYORK'


--11.查询10号部门的员工在整个公司中所占的比例：4
 SELECT COUNT(Q.EMPNO)
 FROM EMP Q
  WHERE Q.DEPTNO='10' 
  SELECT COUNT(W.EMPNO)/(SELECT COUNT(Q.EMPNO)
 FROM EMP Q
  WHERE Q.DEPTNO='10' )
  FROM EMP W
	
--12、查询比普通员工的最高薪水还要高的领导者姓名
 SELECT max(c.SAL)
 from EMP c

  
--13、找出薪水最高的五个人 
 SELECT TOP 5q.ENAME
 from EMP q
  ORDER BY q.SAL DESC
--14、列出至少有三个员工的所有部门和部门信息
SELECT COUNT(q.ENAME)
from EMP q
 GROUP BY q.DEPTNO
 SELECT *
 from EMP e
   GROUP BY e.DEPTNO 
   HAVING (SELECT COUNT(q.ENAME)
from EMP q
 GROUP BY q.DEPTNO)<(COUNT(e.EMPNO))
--15、查询最后入职的5名员工
SELECT TOP 5q.ENAME
from EMP q
  ORDER BY q.HIREDATE desc


--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数
SELECT q.JOB
from EMP q

 GROUP BY q.JOB
 HAVING MIN(q.SAL)>1500
 
 SELECT COUNT(w.EMPNO)
 from EMP w
  WHERE w.JOB IN (SELECT q.JOB
from EMP q

 GROUP BY q.JOB
 HAVING MIN(q.SAL)>1500)
 


--17、列出各种工作的最低工资以及从事该工作的雇员姓名
SELECT q.JOB,MIN(q.SAL)
from EMP q

 GROUP BY q.JOB
 
 
 SELECT w.ENAME
 from EMP w
  WHERE w.SAL IN (SELECT MIN(q.SAL)
from EMP q
 GROUP BY q.JOB)
 

 


--18、求薪水最低的部门经理所在部门的名称


