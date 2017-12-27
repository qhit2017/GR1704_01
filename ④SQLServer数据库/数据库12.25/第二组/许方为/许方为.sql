SELECT*FROM EMP


--1.查询部门名称是‘SALES’的员工信息
SELECT*
from EMP q CROSS JOIN emp r


--2.查询公司中薪水最高的员工信息
 SELECT  MAX (w.SAL)
 from EMP w
 
 SELECT*
 FROM EMP e
 WHERE e.SAL=(SELECT  MAX (w.SAL)
 from EMP w) 

--3.查询各部门中最高薪水的员工编号，姓名
 SELECT  MAX (t.SAL)
 from EMP t
 
 
 SELECT  y.EMPNO, y.ename 
 from EMP y
 WHERE y.SAL=( SELECT  MAX (t.SAL)
 from EMP t)
 
--4.查询各部门最高薪水的员工信息
SELECT MAX(u.SAL)
from EMP u

 SELECT*
 from EMP u
 WHERE u.SAL=(SELECT MAX(u.SAL)
from EMP u)

--5.查询薪水大于该部门平均薪水的员工信息
SELECT AVG(i.SAL)
from EMP i
GROUP BY i.DEPTNO

SELECT*
FROM EMP i
where i.SAL >(select AVG(i.SAL)
from EMP i
GROUP BY i.DEPTNO)

--6.查询部门名称是‘SALES’的员工信息
SELECT*
from EMP O CROSS JOIN emp r
 

--7.查询领导者是‘BLAKE’的员工信息 
SELECT*
FROM EMP p
WHERE p.MGR is null


