
SELECT*FROM EMP
--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
from EMP a 
WHERE a.EMPNO='SALES'


--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT MAX(b.SAL) 
from EMP b

SELECT *
from EMP p
WHERE p.SAL=(SELECT MAX(b.SAL) 
from EMP b)

--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT MAX(f.SAL)
from EMP f
GROUP BY f.DEPTNO

SELECT t.EMPNO,t.EMPNO
from EMP t
WHERE t.SAL in(SELECT MAX(f.SAL)
from EMP f
GROUP BY f.DEPTNO)


--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT MAX(p.SAL) 
from EMP p
GROUP BY p.DEPTNO
SELECT *
from EMP p
WHERE  p.SAL IN  (SELECT MAX(p.SAL) 
from EMP p
GROUP BY p.DEPTNO)


--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT AVG(e.SAL) 
from EMP e 
GROUP BY e.DEPTNO

SELECT *
from EMP e
WHERE e.SAL>(SELECT AVG(e.SAL) 
from EMP e 
GROUP BY e.DEPTNO)


