SELECT *FROM EMP
--1.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT max(a.SAL)
from EMP a

SELECT*
FROM EMP b
	WHERE b.SAL=(SELECT max(a.SAL)
	from EMP a)
--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT a.EMPNO,a.ENAME
from EMP a
WHERE a.SAL IN(SELECT max(a.SAL)
from EMP a 
GROUP BY a.DEPTNO)
--4.��ѯ���������нˮ��Ա����Ϣ  
SELECT*
from EMP a
WHERE a.SAL IN(SELECT max(a.SAL)
from EMP a 
GROUP BY a.DEPTNO)
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
--6.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT *
from DEPT q
 WHERE q.DNAME='SALES'
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT* 
from EMP a
WHERE a.ENAME = ('BLAKE')
SELECT *
FROM EMP b
WHERE b.MGR=(SELECT a.EMPNO 
from EMP a
WHERE a.ENAME ='BLAKE')
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT*
from EMP a
WHERE a.ENAME='SMITH'

SELECT*
FROM EMP b
WHERE b.JOB=(SELECT a.JOB
from EMP a
WHERE a.ENAME='SMITH')
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT AVG(a.SAL)
FROM EMP a
WHERE a.DEPTNO='10'
SELECT W.DEPTNO
 FROM EMP W
 GROUP BY W.DEPTNO
  HAVING AVG(W.SAL)<(SELECT AVG(F.SAL)
FROM EMP F
 WHERE F.DEPTNO='10')
--10.��ѯ��NEW YORK����������Ա�� 
SELECT a.DEPTNO
from DEPT a
WHERE a.DNAME='NEWYORK'
--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����4
--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������
--13���ҳ�нˮ��ߵ������
 SELECT TOP 5a.ENAME
 from EMP a
  ORDER BY a.SAL DESC 
 

