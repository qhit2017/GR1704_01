--1.��ѯ���еĲ��ű��
SELECT  a.DEPTNO as'���ű��'
from EMP a

--2.��ѯ�������˵Ĳ��ű��
SELECT b.DEPTNO as'���ű��'
from EMP b
WHERE b.DEPTNO IS NOT NULL

--3.��ѯ���и�λ����
SELECT c.DNAME as'��λ����'
from DEPT c

--4.��ѯ����нˮ������ǧ��Ա����Ϣ
SELECT d.ENAME,d.SAL
from EMP d
WHERE d.SAL >2000

--5.��ѯ����20���ŵ�Ա����������ż�нˮ
SELECT  e.ENAME,e.EMPNO,e.SAL
from emp e
WHERE e.DEPTNO =20

--6.��ѯ����û�н����Ա����Ϣ
SELECT *
from emp f
where f.COMM IS null

--7.��ѯ�����н����Ա����Ϣ
SELECT *
from EMP g
WHERE g.COMM IS NOT null

--8.��ѯ����쵼��Ա����Ϣ
SELECT *
from EMP h
where h.MGR IS null

--9.��ѯ����81��֮����ְ��Ա����Ϣ
SELECT *
from emp i
where i.HIREDATE>'1981-1-1'

--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ
SELECT *
from EMP j
where j.SAL>2000 AND j.SAL<4000

--11.��ѯ���в��ű����10��30��Ա����Ϣ
SELECT *
from EMP k
WHERE k.DEPTNO=10 OR k.DEPTNO=30

--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ
SELECT *
from emp l
where l.DEPTNO=20 AND l.SAL>2000

--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ
SELECT *
from emp m
where m.SAL<2000 or m.SAL>4000

--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ
SELECT *
from  EMP n
where n.DEPTNO!=10 AND n.DEPTNO!=30

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд
SELECT *
from EMP o
where o.ENAME='scott'

--16.��ѯ�����������ALL��Ա������
SELECT p.ENAME
from EMP p
where p.ENAME LIKE '%ALL%'

--17.��ѯ�����ԡ�S����ͷ��ͬѧ
SELECT r.ENAME
from EMP r
where r.ENAME LIKE 'S%'

--18.��ѯ�ڶ�����ĸΪA��Ա������
SELECT s.ENAME
from EMP s
where s.ENAME LIKE '_A%'

--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ��������
SELECT t.EMPNO,t.ENAME,t.DEPTNO,t.JOB,t.SAL
from EMP t
ORDER BY t.SAL desc

--20.��ѯ����Ա����Ϣ�����ղ��Ž������У������ڰ���нˮ��������
SELECT *
from EMP u
ORDER BY u.DEPTNO DESC,u.SAL

--21.��ѯ�����а�����A��Ա������������ţ�нˮ������нˮ��������
SELECT v.ENAME,v.EMPNO,v.SAL
from EMP v
WHERE v.ENAME LIKE '%A%'
ORDER BY v.SAL desc

--22.��ѯ�����볬��10000��Ա������������ţ�нˮ�������룬���������뽵������
SELECT w.ENAME,w.EMPNO,w.SAL,(w.SAL*12+w.COMM) as'������'
from EMP w
WHERE (w.SAL*12)>10000
ORDER BY (w.SAL*12+w.COMM)desc

--23.��ѯ��н����10000��Ա������������ţ�нˮ�������룬������н��������
SELECT z.ENAME,z.EMPNO,z.SAL,(z.SAL*12)
from EMP z
WHERE (z.SAL*12)>10000
ORDER BY (z.SAL*12) desc
