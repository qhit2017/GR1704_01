--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT*
from DEPT a
where a.DNAME='sales'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT*
from EMP a
where a.SAL=(SELECT  MAX(a.SAL)
from EMP a )                   
--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT a.EMPNO,a.ENAME
from EMP a
where a.SAL in (SELECT MAX(a.SAL)
from EMP a
GROUP BY a.DEPTNO)
--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT*
from EMP a
where a.SAL in (SELECT MAX(a.SAL)
from EMP a
GROUP BY a.DEPTNO)
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT  AVG(a.SAL) from EMP a GROUP BY a.DEPTNO
SELECT *
from EMP a
where a.SAL>2916 OR a.SAL>2175 OR a.SAL>1566
--6.��ѯ���������ǡ�SALES����Ա����Ϣ
 SELECT*
from DEPT a
where a.DNAME='sales'
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT*
from EMP a
where a.ENAME='BLAKE'
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT *
FROM EMP A
WHERE A.JOB=(SELECT A.JOB 
 FROM EMP A
 WHERE A.ENAME='SMITH')
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT A.DEPTNO
FROM EMP A 
GROUP BY A.DEPTNO
HAVING AVG(A.SAL) <(SELECT AVG(A.SAL) 
FROM EMP A
WHERE A.DEPTNO=10)
--10.��ѯ��NEW YORK����������Ա�� 
SELECT*
FROM DEPT A
WHERE A.LOC='NEW YORK'
