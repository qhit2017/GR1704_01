--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT MAX(S.SAL)
FROM EMP S
SELECT *
FROM EMP Q
 WHERE Q.SAL=(SELECT MAX(S.SAL)
FROM EMP S)

--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT MAX(E.SAL)
FROM EMP E
 GROUP BY E.DEPTNO 
 SELECT Q.EMPNO,Q.ENAME
 FROM EMP Q
 WHERE Q.SAL IN(SELECT MAX(E.SAL)
FROM EMP E
 GROUP BY E.DEPTNO )
--4.��ѯ���������нˮ��Ա����Ϣ 
 SELECT MAX(Q.SAL)
 FROM EMP Q
 GROUP BY Q.DEPTNO
 SELECT  *
 FROM EMP E
  WHERE E.SAL IN (SELECT MAX(Q.SAL)
 FROM EMP Q
  GROUP BY Q.DEPTNO) 

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ
 

--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT e.EMPNO
from EMP e
 WHERE e.ENAME='BLAKE'
 SELECT *
 FROM EMP W
  WHERE W.MGR=(SELECT e.EMPNO
from EMP e
 WHERE e.ENAME='BLAKE')
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
 SELECT Q.JOB
 FROM EMP Q
  WHERE Q.ENAME='SMITH'
  SELECT *
  FROM EMP W
   WHERE W.JOB=( SELECT Q.JOB
 FROM EMP Q
  WHERE Q.ENAME='SMITH')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT AVG(F.SAL)
FROM EMP F
 WHERE F.DEPTNO='10'
 SELECT W.DEPTNO
 FROM EMP W
 GROUP BY W.DEPTNO
  HAVING AVG(W.SAL)<(SELECT AVG(F.SAL)
FROM EMP F
 WHERE F.DEPTNO='10')
	

--10.��ѯ��NEW YORK����������Ա�� 
SELECT Q.DEPTNO
FROM DEPT Q
 WHERE Q.DNAME='NEWYORK'


