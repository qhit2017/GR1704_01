SELECT * FROM EMP 
SELECT * FROM  DEPT

--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
from EMP a 
WHERE a.DEPTNO='sales'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT MAX(b.SAL) 
from EMP b

SELECT *
from EMP q
where q.SAL=(SELECT MAX(b.SAL) 
from EMP b)
--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT max(C.SAL) 
from EMP c
GROUP BY c.DEPTNO

SELECT w.EMPNO,w.ENAME
from EMP w
where w.SAL IN (SELECT max(C.SAL) 
from EMP c
GROUP BY c.DEPTNO)
--4.��ѯ���������нˮ��Ա����Ϣ 
SELECT MAX(e.SAL) 
from EMP e
GROUP BY e.DEPTNO 

SELECT *
from EMP r
where r.SAL IN (SELECT MAX(e.SAL) 
from EMP e
GROUP BY e.DEPTNO ) 

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT AVG(t.SAL) 
from EMP t
where t.DEPTNO='10'AND t.DEPTNO='20'AND t.DEPTNO='30' 

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT y.EMPNO
from EMP y
where y.ENAME='blake'

SELECT *
from EMP u
WHERE u.MGR=(SELECT y.EMPNO
from EMP y
where y.ENAME='blake')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
SELECT i.JOB
from EMP i
where i.ENAME='smith'

SELECT *
from EMP o
where o.JOB=(SELECT i.JOB
from EMP i
where i.ENAME='smith')
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT AVG(p.SAL) 
from EMP p
where p.DEPTNO='10'

SELECT f.EMPNO
from EMP f
where f.SAL<(SELECT AVG(p.SAL) 
from EMP p
where p.DEPTNO='10')
--10.��ѯ��NEW YORK����������Ա�� 
SELECT *
from DEPT g
where g.DEPTNO='10'
--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 


--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
--13���ҳ�нˮ��ߵ������

--14���г�����������Ա�������в��źͲ�����Ϣ
--15����ѯ�����ְ��5��Ա��
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
