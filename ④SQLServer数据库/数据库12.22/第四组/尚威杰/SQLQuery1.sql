SELECT * FROM emp

--1.��ѯ���еĲ��ű�ţ�
 SELECT a.EMPNO
 from emp a
 --2.��ѯ�������˵Ĳ��ű�ţ�
 SELECT b.DEPTNO
 from EMP b
 WHERE b.DEPTNO IS NOT null
 --3.��ѯ���и�λ���ƣ�
 SELECT c.DNAME
 from DEPT c
 --4.��ѯ����нˮ������ǧ��Ա����Ϣ
 SELECT *
 from EMP d
 WHERE d.SAL>2000
 
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT e.ENAME,e.EMPNO,e.SAL
from EMP e
WHERE e.DEPTNO=20
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from EMP f
WHERE f.COMM IS NULL
--7.��ѯ�����н����Ա����Ϣ 
SELECT *
from EMP g
WHERE g.COMM IS NOT NULL
--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
from EMP h
where h.MGR IS NULL
--9.��ѯ����81��֮����ְ��Ա����Ϣ
SELECT *
from EMP i
where i.HIREDATE>'1981'
--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ
SELECT *
from EMP j
where j.SAL>2000 AND j.SAL<4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
 SELECT *
 from DEPT k
 where k.DEPTNO<=10 OR k.DEPTNO<=30
 
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ��
SELECT *
from EMP l
WHERE l.SAL>2000 AND l.DEPTNO=20

--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
 SELECT*
 FROM EMP m
 WHERE m.SAL<2000 or m.SAL >4000
-- 14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ
SELECT*
FROM DEPT  n
WHERE n.DEPTNO NOT IN (10,30)
--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT *
from EMP q
WHERE q.ENAME='scott'
--16.��ѯ�����������ALL��Ա������
SELECT w.ENAME
from EMP w
where w.ENAME LIKE '%ALL%'
--17.��ѯ�����ԡ�S����ͷ��ͬѧ
SELECT w.ENAME
from EMP w
where w.ENAME LIKE 's%'
--18.��ѯ�ڶ�����ĸΪA��Ա������
SELECT w.ENAME
from EMP w
where w.ENAME LIKE '_A%'
