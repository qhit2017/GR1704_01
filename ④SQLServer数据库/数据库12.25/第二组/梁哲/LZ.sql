SELECT *FROM EMP 
--1.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM DEPT  A
WHERE A.DNAME ='SALES'
--2.查询公司中薪水最高的员工信息 
SELECT MAX(B.SAL ) 
FROM EMP B

SELECT *
FROM EMP C
WHERE C.SAL=(SELECT MAX(B.SAL ) 
	FROM EMP B)

--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT MAX(D.SAL ) 
FROM EMP D
GROUP BY D.DEPTNO 

SELECT *
FROM EMP D
WHERE D.SAL IN (SELECT MAX(D.SAL ) 
	FROM EMP D
	GROUP BY D.DEPTNO)
--4.查询各部门最高薪水的员工信息
SELECT MAX(S.SAL ) 
FROM EMP S
GROUP BY S.DEPTNO 

SELECT *
FROM EMP S
WHERE S.SAL IN (SELECT MAX(S.SAL ) 
	FROM EMP S
	GROUP BY S.DEPTNO )
--5.查询薪水大于该部门平均薪水的员工信息 
SELECT AVG(F.SAL ) 
FROM EMP F
GROUP BY F.DEPTNO 

SELECT *
FROM EMP F
WHERE F.SAL >(SELECT AVG(F.SAL ) 
FROM EMP F
GROUP BY   F.DEPTNO )

--6.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM DEPT  A
WHERE A.DNAME ='SALES'
--7.查询领导者是‘BLAKE’的员工信息 
SELECT *
FROM EMP   A
WHERE A.ENAME ='BLAKE'

SELECT *
FROM EMP A
WHERE A.MGR  IN (SELECT a.EMPNO 
FROM EMP   A
WHERE A.ENAME  ='BLAKE')

--8.查询和SMITH工作相同的员工信息 
SELECT V.JOB 
FROM EMP V
WHERE V.ENAME  ='SMITH'

SELECT *
FROM EMP V
WHERE V.JOB IN(SELECT V.JOB 
	FROM EMP V
	WHERE V.ENAME  ='SMITH')
--9.查询平均工资比10部门低的部门编号 
SELECT A.DEPTNO, AVG(A.SAL )
FROM EMP A
GROUP BY  A.DEPTNO
HAVING AVG(A.SAL)<(SELECT AVG(B.SAL)
FROM EMP B
WHERE B.DEPTNO=10)
--10.查询在NEW YORK工作的所有员工 
SELECT *
FROM DEPT  S
WHERE  S.LOC= 'NEW YORK'


