SELECT * FROM EMP

--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
FROM EMP a
WHERE a.JOB='SALES'

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ
SELECT MAX(b.SAL)
from EMP b
SELECT *
FROM EMP c
WHERE c.SAL=(SELECT MAX(b.SAL)
from EMP b)


--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT MAX(d.SAL)
FROM EMP d
GROUP BY d.DEPTNO

SELECT e.EMPNO,e.ENAME,e.DEPTNO
from EMP e
WHERE e.SAL IN (SELECT MAX(d.SAL)
FROM EMP d
GROUP BY d.DEPTNO) 

--4.��ѯ���������нˮ��Ա����Ϣ
SELECT MAX(f.SAL) 
from EMP f
GROUP BY f.DEPTNO
SELECT *
FROM EMP g
WHERE g.SAL IN(SELECT MAX(f.SAL) 
from EMP f
GROUP BY f.DEPTNO)
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT AVG(h.SAL)
FROM EMP h
GROUP BY h.DEPTNO
SELECT *
FROM EMP i
HAVING i.SAL (SELECT AVG(h.SAL)
FROM EMP h
GROUP BY h.DEPTNO)

select *
from EMP m WHERE m.SAL > 
	(SELECT AVG(n.SAL) from EMP n WHERE n.DEPTNO = m.DEPTNO)

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT j.EMPNO
from EMP j
WHERE j.ENAME='BLAKE'
SELECT *
FROM EMP k
WHERE k.MGR=(SELECT j.EMPNO
from EMP j
WHERE j.ENAME='BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT l.JOB
from EMP l
WHERE l.ENAME='SMITH'
SELECT *
FROM EMP m
WHERE m.JOB=(SELECT l.JOB
from EMP l
WHERE l.ENAME='SMITH')


--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT AVG(n.SAL)
from EMP n
WHERE n.DEPTNO=10
SELECT o.DEPTNO
from EMP o
WHERE o.SAL<(SELECT AVG(n.SAL)
from EMP n
WHERE n.DEPTNO=10)


--10.��ѯ��NEW YORK����������Ա�� 
SELECT *
FROM DEPT j
WHERE j.LOC='NEW YORK'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 

--13���ҳ�нˮ��ߵ������ 
SELECT MIN(z.SAL),z.ENAME
FROM EMP z
GROUP BY z.SAL,z.ENAME
--14���г�����������Ա�������в��źͲ�����Ϣ

--15����ѯ�����ְ��5��Ա��

--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����

select * FROM DEPT