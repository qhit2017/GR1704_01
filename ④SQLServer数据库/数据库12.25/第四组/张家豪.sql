--1.��ѯ���������ǡ�SALES����Ա����Ϣ

SELECT * FROM emp

SELECT  *
from emp a
where a.job='clerk'
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT MAX(b.mgr)   
from emp b

SELECT* 
from emp c
where c.mgr=(SELECT MAX(b.mgr)   
from emp b)
--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT MAX(d.mgr) 
from emp d
GROUP BY d.job

SELECT e.empno ,e.ename 
from emp e
where e.mgr  IN  (SELECT MAX(d.mgr) 
from emp d
GROUP BY d.job)
--4.��ѯ���������нˮ��Ա����Ϣ 

SELECT *
from emp e
where e.mgr  IN  (SELECT MAX(d.mgr) 
from emp d
GROUP BY d.job)
--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT r.empno 
from emp r
WHERE r.ename='BLAKE'

SELECT *
from emp d
where d.mgr=(SELECT r.empno 
from emp r
WHERE r.ename='BLAKE'
)
--8.��ѯ��SMITH������ͬ��Ա����Ϣ 

SELECT a.job
from emp a
WHERE a.ename='SMITH'

SELECT *
from emp c
where c.job=(SELECT a.job
from emp a
WHERE a.ename='SMITH'
) 
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 
SELECT  AVG(d.mgr) 
from emp d
WHERE d.deptno='10'

SELECT s.deptno
from emp s
GROUP BY s.deptno
HAVING AVG(s.mgr) >(SELECT  AVG(d.mgr) 
from emp d
WHERE d.deptno='10')
--10.��ѯ��CLERK����������Ա�� 
SELECT *
from emp s
where s.job='CLERK'