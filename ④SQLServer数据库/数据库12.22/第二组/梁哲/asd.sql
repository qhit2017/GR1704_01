SELECT *FROM EMP
--1.查询所有的部门编号： 	
SELECT DISTINCT a.DEPTNO 
from EMP a	
--2.查询所有有人的部门编号： 
SELECT B.DEPTNO 
FROM EMP B
WHERE B.DEPTNO IS NOT NULL 
--3.查询所有岗位名称： 
SELECT C.DNAME
FROM DEPT C
--4.查询所有薪水超过两千的员工信息 
SELECT D.ENAME ,D.SAL
FROM EMP D
WHERE D.SAL >2000
--5.查询所有20部门的员工姓名，编号及薪水 
SELECT F.ENAME,F.EMPNO,F.SAL
FROM EMP F
WHERE F.DEPTNO =20
--6.查询所有没有奖金的员工信息 
SELECT *
from EMP h
WHERE h.COMM is NULL  
--7.查询所有有奖金的员工信息 
SELECT *
from EMP o
WHERE o.COMM is NOT NULL 
--8.查询最高领导的员工信息 
SELECT *
from EMP l
WHERE l.MGR IS NULL 
--9.查询所有81年之后入职的员工信息 
SELECT *
FROM EMP p
WHERE p.HIREDATE>'1981'
--10.查询所有薪水在2000-4000范围内的员工信息 
SELECT *
from EMP k
WHERE k.SAL >2000 AND k.SAL<4000
--11.查询所有部门编号是10或30的员工信息 
SELECT  *
FROM EMP Q
WHERE Q.DEPTNO=10 OR Q.DEPTNO=30
--12.查询所有20部门并且薪水超过2000的员工信息： 
SELECT *
FROM EMP P
WHERE P.DEPTNO =20 AND P.SAL >2000
--13.查询所有薪水不在2000-4000范围内的员工信息 
SELECT *
FROM EMP J
WHERE J.SAL <2000 AND  J.SAL <4000
--14.查询所有部门编号不是10，30的员工信息 
SELECT *
FROM EMP Y
WHERE Y.DEPTNO NOT IN (10,30)
--15.查询用户名为scott的员工信息：注意区分大小写 
SELECT *
FROM EMP F
WHERE F.ENAME ='scott'
--16.查询姓名里面包含ALL的员工姓名 
SELECT *
FROM EMP V
WHERE V.ENAME LIKE '%ALL%'
--17.查询所有以”S”开头的同学 
SELECT *
FROM EMP S
WHERE S.ENAME LIKE 'S%%'
--18.查询第二个字母为A的员工姓名 
SELECT *
FROM EMP X
WHERE X.ENAME LIKE '_A%'
--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列 
SELECT M.EMPNO ,M.ENAME ,M.DEPTNO ,M.JOB ,M.SAL 
FROM EMP M
ORDER BY M.SAL DESC 
--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列 
SELECT *
FROM EMP N
ORDER BY N.DEPTNO DESC ,N.SAL 

