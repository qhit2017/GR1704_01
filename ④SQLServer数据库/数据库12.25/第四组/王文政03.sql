--1.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT *
from DEPT a
where a.DNAME='SALES'

--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ
SELECT MAX(b.SAL)
from EMP b

SELECT *
from EMP f
where f.SAL=(SELECT MAX(b.SAL)
	from EMP b)

--3.��ѯ�����������нˮ��Ա����ţ�������
SELECT MAX(d.SAL)
from EMP d
GROUP BY d.DEPTNO

SELECT e.EMPNO,e.ENAME
from EMP e
WHERE e.SAL IN (SELECT MAX(d.SAL)
	from EMP d
	GROUP BY d.DEPTNO)
--4.��ѯ���������нˮ��Ա����Ϣ
SELECT MAX(w.SAL)
from EMP w
GROUP BY w.DEPTNO

SELECT*
from EMP g
where g.SAL IN (SELECT MAX(w.SAL)
	from EMP w
	GROUP BY w.DEPTNO)
	
--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ
SELECT AVG(rs.SAL)
from EMP rs
GROUP BY rs.DEPTNO

SELECT *
from EMP sr
WHERE sr.SAL>(SELECT AVG(rs.SAL)
	from EMP rs
	GROUP BY rs.DEPTNO)

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ
 SELECT alo.EMPNO
 from EMP alo
 WHERE alo.ENAME='BLAKE'
 
 SELECT *
 from emp ggo
 WHERE ggo.MGR=(SELECT alo.EMPNO
	 from EMP alo
	 WHERE alo.ENAME='BLAKE')
	 
--8.��ѯ��SMITH������ͬ��Ա����Ϣ
SELECT uw.JOB
from EMP uw
where uw.ENAME='SMITH'

SELECT *
from EMP k
where k.JOB=(SELECT uw.JOB
	from EMP uw
	where uw.ENAME='SMITH')
	
--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű��
SELECT fb.DEPTNO,
AVG(fb.SAL)
from EMP fb
GROUP BY fb.DEPTNO
HAVING AVG(fb.SAL)<(SELECT AVG(fn.SAL)
from EMP fn
where fn.DEPTNO=10 )

--10.��ѯ��NEW YORK����������Ա��
SELECT *
from DEPT fg
WHERE fg.LOC='NEW YORK'

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����
SELECT MIN(fv.SAL)
from EMP fv
GROUP BY fv.JOB

SELECT fj.ENAME
from EMP fj
where fj.ENAME=(SELECT MIN(fv.SAL)
	from EMP fv
	GROUP BY fv.JOB)


--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������

SELECT fy.ENAME
from EMP fy
where fy.SAL>(SELECT MAX(fu.SAL) from EMP fu WHERE fu.EMPNO!=fu.MGR)

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı���
SELECT CAST(COUNT(*) AS nvarchar)+'/'+cast ((SELECT count(*) FROM emp fi) AS nvarchar) as'10�Ų���Ա����ռ��˾����'
FROM emp fl
where fl.DEPTNO=10