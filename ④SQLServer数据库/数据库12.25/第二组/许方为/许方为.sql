SELECT*FROM EMP


--1.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT*
from EMP q CROSS JOIN emp r


--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ
 SELECT  MAX (w.SAL)
 from EMP w
 
 SELECT*
 FROM EMP e
 WHERE e.SAL=(SELECT  MAX (w.SAL)
 from EMP w) 

--3.��ѯ�����������нˮ��Ա����ţ�����
 SELECT  MAX (t.SAL)
 from EMP t
 
 
 SELECT  y.EMPNO, y.ename 
 from EMP y
 WHERE y.SAL=( SELECT  MAX (t.SAL)
 from EMP t)
 
--4.��ѯ���������нˮ��Ա����Ϣ
SELECT MAX(u.SAL)
from EMP u

 SELECT*
 from EMP u
 WHERE u.SAL=(SELECT MAX(u.SAL)
from EMP u)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ
SELECT AVG(i.SAL)
from EMP i
GROUP BY i.DEPTNO

SELECT*
FROM EMP i
where i.SAL >(select AVG(i.SAL)
from EMP i
GROUP BY i.DEPTNO)

--6.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT*
from EMP O CROSS JOIN emp r
 

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT*
FROM EMP p
WHERE p.MGR is null


