SELECT * FROM EMP


--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT * 
from EMP a
WHERE a.JOB='SALES'

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT  MAX(b.SAL)
FROM EMP b

SELECT *
FROM EMP b
WHERE b.SAL=(
SELECT MAX(b.SAL)
FROM EMP b)

--3.��ѯ�����������нˮ��Ա����ţ�����
SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO

SELECT c.EMPNO,c.ENAME
from EMP c
where c.SAL in(SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO)

--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO

SELECT *
from EMP c
where c.SAL in(SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT AVG(d.SAL)
from EMP d

SELECT *
FROM EMP d
where d.SAL>(SELECT AVG(d.SAL)
from EMP d)

--6.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT * 
from EMP e
WHERE e.JOB='SALES'

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT f.EMPNO
from EMP f
WHERE f.ENAME='BLAKE'

SELECT *
FROM EMP f
where f.MGR IN (SELECT f.EMPNO
from EMP f
WHERE f.ENAME='BLAKE'
)
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT g.JOB
from EMP g
WHERE g.ENAME='SMITH'

SELECT *
from EMP g
where g.JOB IN (SELECT g.JOB
from EMP g
WHERE g.ENAME='SMITH')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT  avg(h.SAL)
from EMP h
WHERE h.DEPTNO=10

SELECT h.DEPTNO
from EMP h
GROUP BY h.DEPTNO
HAVING avg(h.SAL)<(SELECT  avg(h.SAL)
from EMP h
WHERE h.DEPTNO=10) 

--10.��ѯ��NEW YORK����������Ա��    
SELECT *
from DEPT i
WHERE i.LOC = 'NEW YORK'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����
 

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
--13���ҳ�нˮ��ߵ������ 
--14���г�����������Ա�������в��źͲ�����Ϣ
--15����ѯ�����ְ��5��Ա��
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����

